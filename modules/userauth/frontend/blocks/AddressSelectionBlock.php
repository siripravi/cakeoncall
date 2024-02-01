<?php
namespace app\modules\userauth\frontend\blocks;
use luya\forms\FieldBlockTrait;
use app\modules\userauth\models\AddressModel;
use luya\helpers\ArrayHelper;
use yii\helpers\Html;
use luya\cms\helpers\Url;
use siripravi\forms\blocks\FormBlock;

class AddressSelectionBlock extends FormBlock
{
    use FieldBlockTrait;

    public function name()
    {
        return 'Address selection';
    }

    public function admin()
    {
       return '<div class="alert alert-info border-0 text-center">Address Selection</div>';
    }

    public function extraVars()
    {
        return [
            //  'addressList' => $this->getAddressList()
        ];
    }

    /**
     * @inheritDoc
     */
    public function frontend()
    {
        \Yii::$app->forms->autoConfigureAttribute(
            $this->getVarValue($this->varAttribute),
            $this->getVarValue($this->varRule, $this->defaultRule),
            $this->getVarValue($this->varIsRequired),
            $this->getVarValue($this->varLabel),
            $this->getVarValue($this->varHint)
        );
        $output = '';

        $model = \Yii::$app->forms->model;        
        $selected = ArrayHelper::typeCast(\Yii::$app->session->get('__AddressModel', $model->attributes));
       // $model->Aid = ($selected['Aid']) ? $selected['Aid'] : '';
        $output .= "<div class='addrSel'>";
        $output .= "<div class='d-flex flex-wrap align-content-start'>";
        $output .= "<div class='row'><p>".Html::a("New Address",['/checkout-delivery','new'=>'delivery'],[
            'role' => 'modal-remote',
            'title' => 'Create new Adree',
            'class' => 'btn btn-primary'
        ])."</p></div>";
        $output .= "<p>" . $model->Aid . "</p>";
        $output .= \Yii::$app->forms->form->field(
            $model,
            'Aid'  //$this->getVarValue($this->varAttribute)
        )
        ->radioList(
                $model->Addresses,
                [
                    'item' => function ($index, $label, $name, $checked, $value) use ($model) {
                                    $return = '<div class="card card-outline-primary p-2 flex-fill">';
                                    $return .= '<div class="card-body">';
                                    $return .= '<a href="#" class="card-link">Another link</a>';
                                    $return .= Html::a(
                                        '<span class="bi bi-trash"></span>',
                                        Url::toModuleRoute('userauthfrontend', ['userauthfrontend/settings/delete-address', 'id' => $value]),
                                        ['title' => 'Delete', 'class' => 'card-link pull-right pjax']
                                    );

                                    $return .= '</div>';
                                    $return .= '<input type="radio" id="' . $name . $index . '" class="form-check-input" data-ftext="' . $label . '" name="' . $name . '" value="' . $value . '" title="click" autocomplete="off" ' . $checked . '>';
                                    $return .= '<label class="form-check-label" for="' . $name . $index . '">' . '<span class="text-muted">' . ucwords($label) . '</span></label>';

                                    $return .= "</div>";
                                    return $return;
                    }, 'class' => 'd-flex text-inline'
                ],
        )->label(false);
        $output .=  "</div>";
        $output .=  "</div>";
        return $output;
    }

  /*  public function actionGetPaymentMethodInfo($id) {

        if (\Yii::$app->request->isAjax) {
            if (!empty($id)) {

                $method = PaymentMethod::findOne($id);
                $methodTranslation = $method->translation;

                $method = ArrayHelper::toArray($method);
                $method['translation'] = ArrayHelper::toArray($methodTranslation);
                $method['image'] = '/images/payment/' .
                    FileHelper::getFullName(
                        \Yii::$app->shop_imagable->get('payment', 'small', $method['image']
                        ));
                return json_encode([
                    'paymentMethod' => $method,
                ]);
            }
        }
        throw new NotFoundHttpException();
    } */
}
