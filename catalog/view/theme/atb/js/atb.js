$(function() {

    // Купить в один клик
    $('.product-thumb').each(function (e) {

        e +=1;

        var img_url = $(this).find('.img-responsive').attr('src'),
            item_name = $(this).find('h4 a').text(),
            item_price = $(this).find('.price').html(),
            admin = $('#callback [name=admin_email]').val();

        $(this).after('\
        \<div class="modal fade bs-example-modal-sm" id="pp-item-' + e + '" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">\
        \<div class="modal-dialog modal-sm" role="document">\
		<div class="product-popup">\
		\<div class="modal-content">\
		\<div class="modal-header">\
		\<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>\
		\<h4 class="modal-title" id="myModalLabel">\
		\<span class="en">Checkout fast</span><span class="ru">Оформить в клик</span>\
		\</h4>\
		\</div>\
		\<div class="modal-body">\
			<div class="pp-content">\
				<h3>' + item_name + '</h3>\
				<p>' + item_price + '</p>\
				<form class="ajax-form">\
					<input type="hidden" name="project_name" value="TransferService">\
	        <input type="hidden" name="admin_email" value="' + admin + '">\
	        <input type="hidden" name="form_subject" value="Заявка с сайта Трансфер-ATB">\
	        <input type="hidden" name="Продукт" value="' + item_name + '">\
	        <input class="form-control ru bfh-phone" type="text" name="Телефон" placeholder="Введите ваш телефон..." data-format="ddd (dd) ddd-dd-dd">\
	        <input class="form-control en" type="text" name="Email" placeholder="Enter your email...">\
	         <button class="btn btn-primary"><span class="en">Send</span><span class="ru">Отправить</span></button>\
				</form>\
				<div class="success-form"><span class="ru">Спасибо за заявку!</span><span class="en">Thank you for your application!</span></div>\
			</div>\
			\</div>\
			\<div class="modal-footer">\
			\<button type="button" class="btn btn-default" data-dismiss="modal"><span class="en">Close</span><span class="ru">Закрыть</span></button>\
			\</div>\
			\</div>\
			\</div>\
			\</div>\
		</div>');

        $(this).find('.button-group').append('<a type="button" data-toggle="modal"\n' +
            '                            data-target="#pp-item-' + e + '" class="button toclick" href="#pp-item-' + e + '"><i class="fa fa-hand-pointer-o"></i> <span class="button-order-2-rus">Оформить в клик</span><span class="button-order-2-eng">Checkout fast</span></a>');
        /*$(this).parent().attr({
            'class' : 'product-layout col-lg-4 col-md-4 col-sm-6 col-xs-12'
        });*/

    });

    //E-mail Ajax Send
    $(".ajax-form").submit(function() {
        var th = $(this);
        $.ajax({
            type: "POST",
            url: "catalog/view/theme/atb/mail.php",
            data: th.serialize()
        }).done(function() {
            var pp_suc = th.closest('.product-popup').find('.success-form');
            pp_suc.fadeIn();
            var modal = $('.modal-open').find('.in');
            setTimeout(function() {
                th.trigger("reset");
                pp_suc.fadeOut();
                $('.modal').modal('hide');
            }, 3000);
        });
        return false;
    });

});