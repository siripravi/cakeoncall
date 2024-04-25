
<!--//Product Card Show Articles  // -->

<?php foreach ($model->articles as $item) : ?>
    <div class="col mb-5 shadow-sm p-3 mb-5 shadow p-3 mb-5 bg-body-tertiary rounded">
        <div class="card h-100">
            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
            <!-- Product image-->
            <img src="<?= $item->getImage()->applyFilter(MediumCrop::identifier())->source; ?>" class="card-img-top object-fit-cover" />

            <!-- Product details-->
            <div class="card-body p-4">
                <div class="text-center">
                    <!-- Product name-->
                    <h5 class="fw-bolder"><?= $item->name; ?></h5>
                    <!-- Product price-->
                    $40.00 - $80.00
                </div>
            </div>
            <!-- Product actions-->
            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                <div class="text-center">
                    <a class="btn btn-outline-dark mt-auto" href="<?= $item->detailUrl; ?>">View Detail</a>
                </div>
            </div>
        </div>
    </div>
<?php endforeach; ?>