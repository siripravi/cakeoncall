<?php
namespace app\modules\catalog\models;
use ronashDhakal\cart\ItemInterface;
use ronashDhakal\cart\ItemTrait;

class CartOrder extends \luya\base\DynamicModel implements ItemInterface
{
    use ItemTrait;
    public $id;
    public $quantity;
    public $price;
    public $message;
    public $delDate;
    public $featureText;
    public $selFeatures = [];
    public $image;
    public $name;

    public function rules()
    {
        return [

            [['id', 'quantity', 'price', 'delDate', 'message', 'image', 'selFeatures', 'featureText'], 'safe'],
            ['selFeatures','required']

        ];
    }
    public function getPrice()
    {
        return $this->price * $this->quantity;
    }
    public function getId()
    {
        return $this->id;
    }

    public function setQuantity($quantity)
    {
        $this->quantity = $quantity;
    }

    public function getCost($withDiscount = true)
    {
        return $this->price * $this->quantity;
    }

    public function getQuantity()
    {
        return $this->quantity;
    }
}
