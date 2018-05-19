<h3><?php echo $heading_title; ?></h3>
<style>
    .image { background-image: ("<?php echo $product['thumb']; ?>");
</style>
<div class="row">
    <?php foreach ($products as $product) { ?>
    <div class="product-layout col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <div class="featured-home">
            <div class="product-thumb transition">
                <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
                <div class="caption">
                    <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                    <p class="description"><?php echo $product['description']; ?></p>
                    <?php if ($product['rating']) { ?>
                    <div class="rating">
                        <?php for ($i = 1; $i <= 5; $i++) { ?>
                        <?php if ($product['rating'] < $i) { ?>
                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                        <?php } else { ?>
                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                        <?php } ?>
                        <?php } ?>
                    </div>
                    <?php } ?>
                    <a class="more-rus" href="<?php echo $product['href']; ?>">Подробнее</a>
                    <a class="more-eng" href="<?php echo $product['href']; ?>">More</a>
                    <?php if ($product['price']) { ?>
                    <p class="price">
                        <?php if (!$product['special']) { ?>
                        <?php echo $product['price']; ?>
                        <?php } else { ?>
                        <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                        <?php } ?>
                        <?php if ($product['tax']) { ?>
                        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                        <?php } ?>
                    </p>
                    <?php } ?>
                </div>
                <div class="button-group">
                    <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-taxi"></i> <span class="button-order-1"><?php echo $button_cart; ?></span></button>
                    <!--<button class="toclick" type="button" data-toggle="modal"
                            data-target="#myModal">
                        <i class="fa fa-hand-pointer-o"></i> <a href=""><span class="button-order-2-rus">Оформить в клик</span><span class="button-order-2-eng">Checkout fast</span></a></button>
                        -->
                </div>
                <div class="button-hover">
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
                </div>
            </div> <!-- .product-thumb -->
        </div> <!-- .featured -->
    </div> <!-- .product-layout -->
    <?php } ?>
</div>
