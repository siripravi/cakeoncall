<?php if ($modelVariant->image_id) { ?>
                <a class="gallery-item" href="<?= Yii::$app->storage->getImage($modelVariant->image_id)->source ?>" data-size="500X400">
                    <img class="img-fluid" src="<?= Yii::$app->storage->getImage($modelVariant->image_id)->source; ?>" alt="<?= $modelVariant->name ?>" title="<?= $modelVariant->name ?>">
                </a>
            <?php } else { ?>
                <div class="thumbnail">
                    <img class="img-fluid" src="/img/photo-default.png" alt="photo-default">
                </div>
            <?php } ?>


            $articleImages = [];
        $articleRadios = [];
        // return $this->render("dummy");
        // $features = Feature::getFilterList(true, [$searchModel->category_id]);
        foreach ($features as $aid => $feat) {
            //$aid = $feat[0]['article_id'];
            foreach ($feat as $i => $val) {
                $thumbnails = [];
                $images = [];
                $radList = [];
                switch ($val['type']) {
                    case 1:
                        $fId = $val['id'];
                        //  $this->id = $fId;
                        $fName = $val['name'];
                        $fArr = $val['featureValues'][$fId];
                        $rad = ArrayHelper::map($fArr, "id", "name");
                        $rList = [];
                        $fList = [];
                        foreach ($rad as  $k => $v) {
                            $rList[$k . "+" . $fArr[$k]['price']] = $rad[$k];
                            $fList[] = $k;
                        }
                        $radList[$fId]['name'] = $fName;
                        $radList[$fId]['rList'] = $rList;
                        $radList[$fId]['fList'] = $fList;
                }
                $articleRadios[$aid]['radioList'] = $radList;

                //?  \Yii::$app->request->get('id') : $session['__params']['id'];  //$this->varValue('articleId');
                $im = [14, 12, 13, 15];
                if (!empty($aid)) {
                    $article = Article::findOne(['id' => $aid, 'enabled' => 1]);
                    if ($article) {
                        foreach ($article->images as $id => $photo) {
                            $thumbnails[$id] = ['thumb' => $photo->image->applyFilter(MediumCrop::identifier())->source];
                            $src = str_replace("\\", "/", $photo->image->applyFilter(LargeCrop::identifier())->getSourceAbsolute());
                            $images[] = [
                                'src' => $src,
                                // 'src' => 'https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/'.$im[$id].'a.webp', //$src,
                                'content' => Html::img($src, ['data-mdb-img' => $src, 'class' => 'w-100']),
                                'options' => [
                                    // 'title' => $photo->alt,
                                    'class' => ''
                                ],
                            ];
                        }
                    }
                }
                $articleImages[$aid]['thumbnails'] = $thumbnails;
                $articleImages[$aid]['images'] = $images;
           }
        }