<?php

namespace app\admin\controllers;

use app\admin\models\EnquiryForm;
use app\admin\models\EnquiryFormSearch;
use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use app\admin\components\BaseController;
use yii\filters\VerbFilter;

/**
 * Feedback_formController implements the CRUD actions for EnquiryForm model.
 */
class EnquiryController extends BaseController
{

    public function beforeAction($action)
    {
        $this->enableCsrfValidation = false;
        return parent::beforeAction($action);
    }

    /**
     * @inheritDoc
     */
    public function behaviors()
    {
        return array_merge(
            parent::behaviors(),
            [
                'verbs' => [
                    'class' => VerbFilter::className(),
                    'actions' => [
                        'delete' => ['POST'],
                    ],
                ],
            ]
        );
    }

    /**
     * Lists all EnquiryForm models.
     *
     * @return string
     */
    public function actionIndex()
    {
        if (!Yii::$app->user->isGuest && Yii::$app->user->identity->is_admin == 1) {
            $searchModel = new EnquiryFormSearch();
            $dataProvider = $searchModel->search($this->request->queryParams);

            return $this->render('index', [
                'searchModel' => $searchModel,
                'dataProvider' => $dataProvider,
            ]);
        } else {
            $this->redirect(['/site/login/']);
            return false;
        }

    }

    /**
     * Displays a single EnquiryForm model.
     * @param int $id ID
     * @return string
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        if (!Yii::$app->user->isGuest && Yii::$app->user->identity->is_admin == 1) {
            return $this->render('view', [
                'model' => $this->findModel($id),
            ]);
        } else {
            $this->redirect(['/site/login/']);
            return false;
        }

    }

    /**
     * Creates a new EnquiryForm model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return string|\yii\web\Response
     */
    public function actionCreate()
    {
        $model = new EnquiryForm();

        if ($this->request->isPost) {
            $filter = array("<", ">", "=", " (", ")", ";", "/");
            $name = htmlspecialchars($_POST['name']);
            $name = str_replace($filter, "", $name);
            $model->name = $name;
            $model->phone_number = $_POST['tel'];
            $model->question = $_POST['services'];
            $model->save();
        } else {
            $model->loadDefaultValues();
        }
        return $this->redirect(['/']);
    }

    /**
     * Updates an existing EnquiryForm model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $id ID
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {

        if (!Yii::$app->user->isGuest && Yii::$app->user->identity->is_admin == 1) {
            $model = $this->findModel($id);

            if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
                return $this->redirect(['view', 'id' => $model->id]);
            }

            return $this->render('update', [
                'model' => $model,
            ]);
        } else {
            $this->redirect(['/site/login/']);
            return false;
        }


    }

    /**
     * Deletes an existing EnquiryForm model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $id ID
     * @return \yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {

        if (!Yii::$app->user->isGuest && Yii::$app->user->identity->is_admin == 1) {
            $model = $this->findModel($id);
            if ($model->is_solved == 0) {
                Yii::$app->session->setFlash('danger', 'Вы не можете удалить не решённую заявку');
            } else {
                $model->delete();
                Yii::$app->session->setFlash('success', 'Заявка удалена');
            }
            return $this->redirect(['index']);
        } else {
            $this->redirect(['/site/login/']);
            return false;
        }


    }

    /**
     * Finds the EnquiryForm model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $id ID
     * @return EnquiryForm the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (!Yii::$app->user->isGuest && Yii::$app->user->identity->is_admin == 1) {
            if (($model = EnquiryForm::findOne(['id' => $id])) !== null) {
                return $model;
            }
            throw new NotFoundHttpException('The requested page does not exist.');
        } else {
            $this->redirect(['/site/login/']);
            return false;
        }

    }
}
