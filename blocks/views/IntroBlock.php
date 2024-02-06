<?php

/**
 * View file for block: FeaturesBlock 
 *
 * File has been created with `block/create` command on LUYA version 1.0.0-RC3. 
 *
 *
 * @var $this \luya\cms\base\PhpBlockView
 */

use yii\helpers\Html;

$elements = $this->placeholderValue('elements');
$containerHtmlClass = [$this->cfgValue('containerHtmlClass')];

if ($this->varValue('useFlexContainer')) {
  $containerHtmlClass[] = 'container-flex';
}

$content = Html::tag('section', $elements, ['class' => $containerHtmlClass]);

if ($this->varValue('disableWrapper')) {
  echo $content;
} else {
  $htmlClass = [$this->cfgValue('htmlClass', 'container')];

  echo Html::tag('section', $content, ['class' => $htmlClass]);
}

?>
<div id="intro" class="bg-image" style="
              background-image: url(https://mdbcdn.b-cdn.net/img/new/fluid/city/113.jpg);
              height: 100vh;
              ">
  <div class="mask text-white" style="background-color: rgba(0, 0, 0, 0.8)">
    <div class="container d-flex align-items-center text-center h-100">
      <div>
        <h1 class="mb-5">This is title</h1>
        <p>
          Lorem ipsum dolor, sit amet consectetur adipisicing elit. Officiis molestiae
          laboriosam numquam expedita ullam saepe ipsam, deserunt provident corporis,
          sit non accusamus maxime, magni nulla quasi iste ipsa architecto? Autem!
        </p>
      </div>
    </div>
  </div>
</div>
<!--
<section>        
        <div id="intro" class="text-center bg-image" style="
            background-image: url('../../../../../../mdbootstrap.com/img/Photos/Horizontal/Nature/full%20page/30.jpg');
            height: 100vh;
          ">
          <div class="mask" style="background-color: rgba(156, 39, 176, 0.1)">
            <div class="d-flex justify-content-center align-items-center h-100 mt-4">
              <div class="text-white">
                <h1 class="display-1 fw-bold">Spa &amp; Beauty</h1>
                <hr class="my-4 bg-white" style="opacity: 1">
                <h4 class="fw-light mb-4">
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                </h4>
                <p class="lead fw-light mb-4 pb-2">
                  Deleniti consequuntur, nihil voluptatem modi nobis veniam.
                </p>
                <button class="btn btn-info btn-lg btn-rounded ripple-surface">Make a reservation</button>
              </div>
            </div>
          </div>
        </div>
       
      </section>
      -->