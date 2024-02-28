<?php
namespace app\modules\catalog\behaviors;
class JsonBehavior extends ConverterBehavior
{
    protected function convertToStoredFormat($value)
    {
        return json_encode($value);
    }

    protected function convertFromStoredFormat($value)
    {
        $array = json_decode($value);
        return $this->arrayToObjectRecrusive($array);
    }

    private function arrayToObjectRecrusive($array)
    {
        foreach($array as $key=>$value){
            if(is_array($value)){
                $array[$key] = $this->arrayToObjectRecrusive($value);
            }
        }
        return (object)$array;
    }
}