<?php $this->beginContent('@app/themes/cakeBaker/views/layouts/home.php'); ?>
<div class="bg-banner">
         <div class="container">
            <div class="row">
               <div class="col-lg-12 col-md-12 col-sm-12 col-12 text-center pt-5 mo-banner">
                  <h2>CERTIFICATE COURSES </h2>
                  <p><a href="javascript:void(0);">Home</a> / CERTIFICATE COURSES     
               </p></div>
            </div>
         </div>
      </div>
<div class="container py-5">
    <div class="row">
        <div class="col-sm-12">
            <div class="page-content" role="main">
                <!-- Single Page Header start -->
                <div class="container-fluid page-header py-5">
                    <h1 class="text-center text-white display-6">Cart</h1>
                    <ol class="breadcrumb justify-content-center mb-0">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Pages</a></li>
                        <li class="breadcrumb-item active text-white">Cart</li>
                    </ol>
                </div>

                <?php if (isset($this->params['breadcrumbs'])) {
                    echo Html::tag(
                        'div',
                        Breadcrumbs::widget([
                            'links' => $this->params['breadcrumbs'],
                            'homeLink' => [
                                'label' => Yii::$app->name,
                                'url' => Yii::$app->homeUrl,
                            ],
                        ]),
                        [
                            'class' => 'display-4 fw-bolder'
                        ]
                    );
                }
                ?>
                <!-- Single Page Header End -->
                <!--php $this->widget('Breadcrumbs', array('crumbs'=>$this->crumbs)); ?-->
             
                <?php echo $content; ?>
            </div>
        </div>      
    </div>
</div>
<?php $this->endContent(); ?>