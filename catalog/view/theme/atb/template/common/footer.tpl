<footer>
    <div class="container">
        <div class="row">
            <?php if ($informations) { ?>
            <div class="col-sm-3">
                <h5><?php echo $text_information; ?></h5>
                <ul class="list-unstyled">
                    <?php foreach ($informations as $information) { ?>
                    <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                    <?php } ?>
                </ul>
            </div>
            <?php } ?>
            <div class="col-sm-3">
                <h5><?php echo $text_service; ?></h5>
                <ul class="list-unstyled">
                    <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                    <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                    <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h5><?php echo $text_extra; ?></h5>
                <ul class="list-unstyled">
                    <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
                    <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
                    <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
                    <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h5><?php echo $text_account; ?></h5>
                <ul class="list-unstyled">
                    <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                    <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                    <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                    <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                </ul>
            </div>
        </div>
        <hr>
        <div class="copy-and-dev">
            <p class="text-left">ATB &#9400; <?php echo date('Y'); ?></p>
            <p class="text-right">Разработка <a href="https://github.com/28gomon" target="_blank">28gomon</a></p>
        </div>
    </div>
</footer>

<div class="hidden">
    <div id="callback" class="callback-form product-popup">

        <h2>Заказать звонок</h2>
        <p>Введите номер телефона и наш менеджер перезвонит вам в течение <strong>15 минут</strong>.</p>

        <form class="ajax-form">
            <!-- Hidden Required Fields -->
            <input type="hidden" name="project_name" value="IphoneService">
            <input type="hidden" name="admin_email" value="<?php echo $email; ?>">
            <input type="hidden" name="form_subject" value="Заявка с сайта Айфонсервис">
            <!-- END Hidden Required Fields -->

            <input class="form-control" type="text" name="Телефон" placeholder="Введите ваш телефон..." required>
            <button class="btn btn-primary">Заказать</button>

        </form>

        <div class="success-form">Спасибо за заявку!</div>

    </div>
</div>

<!-- Theme created by ATB.BY - beta-1 2018 -->

</body></html>