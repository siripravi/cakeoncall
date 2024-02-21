<?php

use kartik\form\ActiveForm; // or kartik\widgets\ActiveForm
?>
<?php
/*
echo $key;
echo "<pre>";
print_r($selection);
die;*/

$form = ActiveForm::begin([
    'id' => 'cart-form-' . $aid,
    'type' => ActiveForm::TYPE_INLINE,
    'fieldConfig' => ['options' => ['class' => 'form-group mb-3 mr-2 me-2']] // spacing form field groups
]);
?>
<?php
$output = "";
foreach ($selection['radioList'] as $id => $feature) {
    $output .= '<span>' . $feature['name'] . '</spn>';
    $output .= $form->field($cartOrder, 'selFeatures' . '[' . $id . ']' . '[' . $aid . ']')->radioList($feature['rList'], ['inline' => true]);
}
echo $output;

?>

<?php ActiveForm::end(); ?>

<div class="col-sm-5 col-md-6 " data-key="<?= $aid; ?>">
    <div class="photo">
        <?php

        echo $this->render('_photo', ['articleImages' => $articleImages, 'aid' => $aid]);

        ?>
    </div>
</div>
<!--
/*
Array
(
    [radioList] => Array
        (
            [8] => Array
                (
                    [name] => Size
                    [rList] => Array
                        (
                            [34+254] => 12 inch
                            [35+750] => Pack
                        )

                    [fList] => Array
                        (
                            [0] => 34
                            [1] => 35
                        )

                )

            [9] => Array
                (
                    [name] => Version
                    [rList] => Array
                        (
                            [31+421] => Eggless
                            [32+351] => With Egg
                        )

                    [fList] => Array
                        (
                            [0] => 31
                            [1] => 32
                        )

                )

        )

) */
                        -->