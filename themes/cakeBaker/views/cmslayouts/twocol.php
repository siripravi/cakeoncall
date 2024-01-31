<?php

use yii\widgets\Breadcrumbs;
use yii\helpers\Html;
?>
<section class="mt-3">
  <div class="container">
    <div class="row">
      <div class="col-12" id="twocol-top">
        <?= $placeholders['top']; ?>
        <form class="needs-validation" novalidate="" style="width: 22rem;">
          <div id="validation" class="form-outline">
            <input type="text" id="form6" class="form-control" required="">
            <label class="form-label" for="form6">Example label</label>
            <div class="valid-feedback">Looks good!</div>
            <div class="invalid-feedback">Input value is required</div>
          </div>

          <button type="submit" id="submit" class="btn btn-primary btn-sm mt-3">
            Submit
          </button>
        </form>
      </div>
    </div>
    <div class="row">
      <div class="col-md-4" id="twocol-left">
        <?= $placeholders['left']; ?>
        <!--  <div class="ecommerce-gallery" data-mdb-zoom-effect="true" data-mdb-auto-height="true">
          <div class="row py-3 shadow-5">
            <div class="col-12 mb-1">
              <div class="lightbox">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/14a.webp" alt="Gallery image 1" class="ecommerce-gallery-main-img active w-100" />
              </div>
            </div>
            <div class="col-3 mt-1">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/14a.webp" data-mdb-img="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/14a.webp" alt="Gallery image 1" class="active w-100" />
            </div>
            <div class="col-3 mt-1">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/12a.webp" data-mdb-img="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/12a.webp" alt="Gallery image 2" class="w-100" />
            </div>
            <div class="col-3 mt-1">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/13a.webp" data-mdb-img="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/13a.webp" alt="Gallery image 3" class="w-100" />
            </div>
            <div class="col-3 mt-1">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/15a.webp" data-mdb-img="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/15a.webp" alt="Gallery image 4" class="w-100" />
            </div>
          </div>
        </div>  -->
      </div>
      <div class="col-md-8" id="twocol-right">
        <?= $placeholders['right']; ?>
      </div>
    </div>
    <div class="col-12" id="twocol-bottom">
      <?= $placeholders['bottom']; ?>
      <button type="button" class="btn btn-primary me-3" id="stacking-trigger">
        Show toast notification
      </button>
      <div class="toast show fade mx-auto" id="basic-example" role="alert" aria-live="assertive" aria-atomic="true" data-mdb-autohide="false">
        <div class="toast-header">
          <strong class="me-auto">MDBootstrap</strong>
          <small>11 mins ago</small>
          <button type="button" class="btn-close" data-mdb-dismiss="toast" aria-label="Close"></button>
        </div>
        <div class="toast-body">Basic Example</div>
      </div>
    </div>
  </div>
</section>