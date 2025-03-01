<?php

namespace app\modules\storage\storage;

use luya\Exception;
use luya\helpers\ArrayHelper;

/**
 * Query Data from Files, Filters and Images.
 *
 * Usage examples which is valid for all classes implementing the QueryTrait.
 *
 * The below examples are wrote for file query but are are working for all classes implementing the QueryTrait like:
 *
 * + Files: {{\luya\admin\file\Query}}
 * + Images: {{\luya\admin\image\Query}}
 * + Folders: {{\luya\admin\folder\Query}}
 *
 * ### All vs. One
 *
 * ```php
 * return (new \luya\admin\file\Query())->where($args)->one();
 * ```
 *
 * ```php
 * return (new \luya\admin\file\Query())->findOne($fileId);
 * ```
 *
 * ```php
 * return (new \luya\admin\file\Query())->where($args)->all();
 * ```
 *
 * ### Counting
 *
 * ```php
 * return (new \luya\admin\file\Query())->where($args)->count();
 * ```
 *
 * ### Customized where condition
 *
 * All QueryTrait classes can use different where notations:
 *
 * ```php
 * return (new \luya\admin\file\Query())->where(['>', 'id', 1])->andWHere(['<', 'id', 3])->all();
 * ```
 *
 * In condition in order to get mutiple columns of a file.
 *
 * ```php
 * return (new \luya\admin\file\Query())->where(['in', 'id', [1, 3]])->all();
 * ```
 *
 * ### Offsets and Limits
 *
 * ```php
 * return (new \luya\admin\file\Query())->where($args)->offset(5)->limit(10)->all();
 * ```
 *
 * See the {{\luya\admin\storage\QueryTrait::where()}} for more details.
 *
 * @author Basil Suter <basil@nadar.io>
 * @since 1.0.0
 */
trait QueryTrait
{
    private $_whereOperators = ['<', '<=', '>', '>=', '=', '==', 'in'];

    /**
     * Return an array with all item values provided for this query method.
     *
     * @return array The array with all values for this query index by its key.
     */
    abstract public function getDataProvider();

    /**
     * Return the a single item by its key. If not found, false must be returned.
     *
     * @param integer $id The requested key identifier.
     * @return array|boolean Returns the item array or false if not found.
     */
    abstract public function getItemDataProvider($id);

    /**
     * Create an item object which implements {{\luya\admin\storage\ItemTrait}}.
     *
     * @param array $itemArray
     * @return \luya\admin\storage\ItemAbstract The item object implementing the ItemTrait.
     */
    abstract public function createItem(array $itemArray);

    /**
     * Create the iterator object which extends from {{\luya\admin\storage\IteratorAbstract}}.
     * @param array $data The data to pass to the Iterator.
     * @return \luya\admin\storage\IteratorAbstract An iterator object extends from IteratorAbstract class.
     */
    abstract public function createIteratorObject(array $data);

    /**
     * Process items against where filters
     *
     * @param string $value
     * @param string $field
     * @return boolean
     */
    private function arrayFilter($value, $field)
    {
        foreach ($this->_where as $expression) {
            if ($expression['field'] == $field) {
                switch ($expression['op']) {
                    case '=':
                        return ($value == $expression['value']);
                    case '==':
                        return ($value === $expression['value']);
                    case '>':
                        return ($value > $expression['value']);
                    case '>=':
                        return ($value >= $expression['value']);
                    case '<':
                        return ($value < $expression['value']);
                    case '<=':
                        return ($value <= $expression['value']);
                    case 'in':
                        return in_array($value, $expression['value']);
                }
            }
        }

        return true;
    }

    /**
     * Filter container data provider against where conditions
     *
     * @return array
     */
    private function filter()
    {
        $containerData = $this->getDataProvider();
        $whereExpression = $this->_where;

        if (empty($whereExpression)) {
            $data = $containerData;
        } else {
            $data = array_filter($containerData, function ($item) {
                foreach ($item as $field => $value) {
                    if (!$this->arrayFilter($value, $field)) {
                        return false;
                    }
                }

                return true;
            });
        }

        if ($this->_offset !== null) {
            $data = array_slice($data, $this->_offset, null, true);
        }

        if ($this->_limit !== null) {
            $data = array_slice($data, 0, $this->_limit, true);
        }

        if ($this->_binds) {
            foreach ($this->_binds as $id => $values) {
                if (isset($data[$id])) {
                    $data[$id] = array_merge($data[$id], $values);
                }
            }
        }

        if ($this->_order !== null) {
            if (!empty($this->_order['ids'])) {
                // id order
                $indexedData = [];
                foreach ($this->_order['ids'] as $indexId) {
                    $column = ArrayHelper::searchColumn($data, current($this->_order['keys']), $indexId);
                    if ($column) {
                        $indexedData[$indexId] = $column;
                    }
                }
                $data = $indexedData;
                unset($indexedData);
            } else {
                ArrayHelper::multisort($data, $this->_order['keys'], $this->_order['directions']);
            }
        }

        return $data;
    }

    private $_limit;

    /**
     * Set a limition for the amount of results.
     *
     * @param integer $count The number of rows to return
     * @return \luya\admin\storage\QueryTrait
     */
    public function limit($count)
    {
        if (is_numeric($count)) {
            $this->_limit = $count;
        }

        return $this;
    }

    private $_offset;

    /**
     * Define offset start for the rows, if you defined offset to be 5 and you have 11 rows, the
     * first 5 rows will be skiped. This is commonly used to make pagination function in combination
     * with the limit() function.
     *
     * @param integer $offset Defines the amount of offset start position.
     * @return \luya\admin\storage\QueryTrait
     */
    public function offset($offset)
    {
        if (is_numeric($offset)) {
            $this->_offset = $offset;
        }

        return $this;
    }

    private $_where = [];

    /**
     * Query where similar behavior of filtering items.
     *
     * Operator Filtering:
     *
     * ```php
     * where(['operator', 'field', 'value']);
     * ```
     *
     * Available Operators:
     *
     * + **<** expression where field is smaller then value.
     * + **>** expression where field is bigger then value.
     * + **=** expression where field is equal value.
     * + **<=** expression where field is small or equal then value.
     * + **>=** expression where field is bigger or equal then value.
     * + **==** expression where field is equal to the value and even the type must be equal.
     * + **in** expression where an value array can be passed to get all values from this field type e.g. `['in', 'id', [1,3,4]]`.
     *
     * Only one operator speific argument can be provided, to chain another expression use the `andWhere()` method.
     *
     * Multi Dimension Filtering:
     *
     * The most common case for filtering items is the equal expression combined with add statements.
     *
     * For example the following expression
     *
     * ```php
     * where(['=', 'id', 0])->andWhere(['=', 'name', 'footer']);
     * ```
     *
     * is equal to the short form multi deimnsion filtering expression
     *
     * ```php
     * where(['id' => 0, 'name' => 'footer']);
     * ```
     *
     * Its **not possibile** to make where conditions on the same column:
     *
     * ```php
     * where(['>', 'id', 1])->andWHere(['<', 'id', 3]);
     * ```
     *
     * This will only appaend the first condition where id is bigger then 1 and ignore the second one
     *
     * @param array $args The where definition can be either an key-value pairing or a condition representen as array.
     * @return QueryTrait
     * @throws Exception
     */
    public function where(array $args)
    {
        foreach ($args as $key => $value) {
            if (in_array($value, $this->_whereOperators, true)) {
                if (count($args) !== 3) {
                    throw new Exception("Wrong where condition. Condition needs an operator and two operands.");
                }

                $this->_where[] = ['op' => $args[0], 'field' => $args[1], 'value' => $args[2]];
                break;
            } else {
                $this->_where[] = ['op' => '=', 'field' => $key, 'value' => $value];
            }
        }

        return $this;
    }

    /**
     * Add another where statement to the existing, this is the case when using compare operators, as then only
     * one where definition can bet set.
     *
     * See {{luya\admin\storage\QueryTrait::where()}}
     *
     * @param array $args The where definition can be either an key-value pairing or a condition representen as array.
     * @return \luya\admin\storage\QueryTrait
     */
    public function andWhere(array $args)
    {
        return $this->where($args);
    }

    private $_order;

    /**
     * Order the query by one or multiple fields asc or desc.
     *
     * Use following PHP constants for directions:
     *
     * + SORT_ASC: 1..10, A..Z
     * + SORT_DESC: 10..1, Z..A
     *
     * Example using orderBy:
     *
     * ```php
     * $query = new Query()->orderBy(['id => SORT_ASC])->all();
     * ```
     *
     * In rare cases you like to sort for certain existing order structure, for example when an explicit order is given
     * from an user input, then you can provide an array of that value. The limitation for this order behavior is that
     * only elements in the list will be taken, other elements will be removed from the result array. This means if an
     * id is not present in that array of orderding by id, this will be removed.
     *
     * Example usage:
     *
     * ```
     * (new Query())->where(['in', 'id', [1,2,3]])->orderBy(['id' => [3,2,1]])->all();
     * ```
     *
     * The above example will return those elements in the order of `3,2,1`.
     *
     * Example usage which will remove elements:
     *
     * ```
     * (new Query())->where(['in', 'id', [1,2,3]])->orderBy(['id' => [2,1]])->all();
     * ```
     *
     * The above example will return only the order elements `2,1` and element with id 3 is gone
     *
     * @param array $order An array with fields to sort where key is the field and value the direction.
     * @return \luya\admin\storage\QueryTrait
     * @since 4.0.0
     */
    public function orderBy(array $order)
    {
        $orderBy = ['keys' => [], 'directions' => [], 'ids' => []];

        foreach ($order as $key => $direction) {
            $orderBy['keys'][] = $key;
            $orderBy['directions'][] = $direction;
            if (is_array($direction)) {
                $orderBy['ids'] = $direction;
            }
        }

        $this->_order = $orderBy;

        return $this;
    }

    private $_binds;

    /**
     * Bind given values into the objects for a given id.
     *
     * ```php
     * (new Query())->find()->where(['in', 'id', [1,2,3])->bind([1 => ['caption' => 'barfoo'])->all();
     * ```
     *
     * @param array $values
     * @return \luya\admin\storage\QueryTrait
     * @since 1.1.1
     */
    public function bind(array $values)
    {
        if (!empty($values)) {
            $this->_binds = $values;
        }

        return $this;
    }

    /**
     * Find all elementes based on the where filter.
     *
     * @return \luya\admin\storage\IteratorAbstract
     */
    public function all()
    {
        return $this->createIteratorObject($this->filter());
    }

    /**
     * Get the count of items
     *
     * @return integer Amount of filtere data.
     */
    public function count()
    {
        return count($this->filter());
    }

    /**
     * Find One based on the where condition.
     *
     * If there are several items, it just takes the first one and does not throw an exception.
     *
     * @return \luya\admin\image\Item|\luya\admin\file\Item|\luya\admin\folder\Item
     */
    public function one()
    {
        $data = $this->filter();

        return (count($data) !== 0) ? $this->createItem(array_values($data)[0]) : false;
    }

    /**
     * FindOne with the specific ID.
     *
     * @param integer $id The specific item id
     * @return \luya\admin\image\Item|\luya\admin\file\Item|\luya\admin\folder\Item
     */
    public function findOne($id)
    {
        return ($itemArray = $this->getItemDataProvider($id)) ? $this->createItem($itemArray) : false;
    }
}
