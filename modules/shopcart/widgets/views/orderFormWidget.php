<?php

foreach ($model->Features as $id => $feature) {
    $fId = $id;
    $fName = $feature['name'];
    $output .= "<h5>" . $fName . "</h5>";
    $output .= "<div class='featSel mb-3'>";
    $output .= "<div class='card border border-round d-flex flex-wrap align-content-start'>";

    $output .= \Yii::$app->forms->form->field(
        $model,
        $this->getVarValue($this->varAttribute) . '[' . $fId . ']'
    )
        ->radioList(

            $feature['rList'],
            [
                'item' => function ($index, $label, $name, $checked, $value) use (&$model, $fId, $fName) {
                    $check = ($index == 0 && $value > 0) ? 'checked' : '';
                    $checked = (isset($model->FeatureSel[$fId]) && $model->FeatureSel[$fId] == $value) ? 'checked' : $check;
                    $return = '<div class="p-2 flex-fill fsel">';
                    $return .= '<input type="radio" id="' . $name . $index . '" class="form-check-input" name="' . $name . '" value="' . $fName . "+" . $label . "+" . $value  . '" title="click" autocomplete="off" ' . $checked . '>';
                    $return .= '<label class="form-check-label" for="' . $name . $index . '">' . '<span class="xtext-muted">' . ucwords($label) . '</span></label>';
                    $return .= "</div>";
                    return $return;
                }, 'class' => 'd-flex text-inline'
            ]
        )->label(false);
    $output .=  "</div>";
    $output .=  "</div>";
}
