<?php
namespace siripravi\shopcart\models;

use siripravi\shopcart\components\ItemInterface;
use siripravi\shopcart\components\ItemTrait;

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

     /* 6-inch-5-layer_36_2354+Eggless_31_251  */
     public function formatFText()
     {
         $html = "";
         $fsel = [];
         $i = -1;
         $price = 0;
         foreach ($this->selFeatures as $f => $v) {
             $i++;
             $fsel[] = explode("+", $v);
             $price += end($fsel)[3];
         }
         $html .= '<div class="flex-fill position-relative">';
         foreach ($fsel as $f => $fs) {
             //   $html .='<span class="text-light">'.$fs[0].'</span><br>';
             $html .= '<span class="badge bg-primary text-light mx-auto">' . $fs[1] . '</span>';
         }
         $html .= "</div>";
         /* $words = [];
         $price = 0;
         $wor = StringHelper::explode($ftext, "+");
         if (count($wor) > 0) {
             foreach ($wor as $i => $word) {
                 $words[$i] = StringHelper::explode($word, "_");
                 if (count($words[$i]) == 3)
                     $price += ($words[$i][2]) ?: 0;
                 $words[$i]['price'] = $price;
             }
         }*/
         return $html;
         // ArrayHelpers::map($words,)
     }
}
