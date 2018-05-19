<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $title;  ?></title>
    <base href="<?php echo $base; ?>"/>
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>
    <meta property="og:title" content="<?php echo $title; ?>"/>
    <meta property="og:type" content="website"/>
    <meta property="og:url" content="<?php echo $og_url; ?>"/>
    <?php if ($og_image) { ?>
    <meta property="og:image" content="<?php echo $og_image; ?>"/>
    <?php } else { ?>
    <meta property="og:image" content="<?php echo $logo; ?>"/>
    <?php } ?>
    <meta property="og:site_name" content="<?php echo $name; ?>"/>
    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css"/>
    <link href="catalog/view/theme/atb/stylesheet/stylesheet.css" rel="stylesheet">
    <?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>"
          media="<?php echo $style['media']; ?>"/>
    <?php } ?>
    <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>"/>
    <?php } ?>
    <?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>
    <script src="catalog/view/theme/atb/js/bootstrap-formhelpers.min.js" type="text/javascript"></script>
    <script src="catalog/view/theme/atb/js/atb.js" type="text/javascript"></script>
    <?php foreach ($analytics as $analytic) { ?>
    <?php echo $analytic; ?>
    <?php } ?>
</head>

<?php $eng_ru = 'russian'; ?>

<?php if($lang == 'en'): ?>
<?php $eng_ru = 'english'; ?>
<?php else: ?>
<?php $eng_ru; ?>
<?php endif; ?>

<body class="<?php echo $class; ?> <?php echo $eng_ru; ?>">

<?php

$home_nav_en = "Home";
$home_nav_ru = "Главная";

?>

<div class="header-home">

    <div id="top" class="top-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="top-phone-number">
                        <ul>
                            <li class="tel_1">
                                <a href="tel:80295606889"><span class="">8 (029) 560-68-89</span></a>
                            </li>
                            <li class="tel_2">
                                <a href="tel:80295606889"><span class="">8 (029) 560-68-89</span></a>
                            </li>
                            <li class="tel_3">
                                <a href="tel:80295606889"><span class="">8 (029) 560-68-89</span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-12">
                    <div id="logo">
                        <?php if ($logo) { ?>
                        <?php if ($home == $og_url) { ?>
                        <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"
                             class="img-responsive"/>
                        <?php } else { ?>
                        <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>"
                                                            alt="<?php echo $name; ?>" class="img-responsive"/></a>
                        <?php } ?>
                        <?php } else { ?>
                        <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                        <?php } ?>
                    </div>
                </div>
                <div class="col-md-8 col-sm-12 clearfix">
                    <div id="top-links" class="top-links nav pull-right">
                        <div class="top-box">
                            <?php echo $currency; ?>
                            <?php echo $language; ?>
                            <div class="authorization-registration">
                                <ul class="list-inline">
                                <li class="dropdown">
                                    <a href="<?php echo $account; ?>"
                                       title="<?php echo $text_account; ?>"
                                       class="dropdown-toggle" data-toggle="dropdown">
                                        <i class="fa fa-user"></i>
                                        <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span>
                                        <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-right">
                                        <?php if ($logged) { ?>
                                        <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                                        <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                                        <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                                        <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                                        <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                                        <span class="function-button">
                                    <li>
                                        <a href="<?php echo $wishlist; ?>"
                                           id="wishlist-total"
                                           title="<?php echo $text_wishlist; ?>">
                                            <i class="fa fa-heart"></i>
                                            <span class="hidden-xs hidden-sm hidden-md">
                                        <?php echo $text_wishlist; ?>
                                    </span>
                                        </a>
                                    </li>
                                        <li>
                                            <a href="<?php echo $shopping_cart; ?>"
                                               title="<?php echo $text_shopping_cart; ?>">
                                                <i class="fa fa-shopping-cart"></i>
                                                <span class="hidden-xs hidden-sm hidden-md">
                                            <?php echo $text_shopping_cart; ?>
                                        </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="<?php echo $checkout; ?>"
                                               title="<?php echo $text_checkout; ?>">
                                                <i class="fa fa-share"></i>
                                                <span class="hidden-xs hidden-sm hidden-md">
                                            <?php echo $text_checkout; ?>
                                        </span>
                                            </a>
                                        </li>
                                        </span>
                                        <?php } else { ?>
                                        <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                                        <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                                        <?php } ?>
                                    </ul>
                                </li>
                            </ul>
                            </div>
                            <div class="cart-button"><?php echo $cart; ?></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <header>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="search-container">
                        <?php echo $search; ?>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <div class="section-information-button">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <?php if ($informations) { ?>
                    <ul class="information-menu">
                        <?php if ($lang == 'en'): ?>
                            <li><a href="/"><?php echo $home_nav_en; ?></a></li>
                        <?php else: ?>
                        <li><a href="/"><?php echo $home_nav_ru; ?></a></li>
                        <?php endif; ?>
                        <?php foreach ($informations as $information) { ?>
                        <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                        <?php } ?>
                        <?php if ($lang == 'ru'): ?>
                        <li><a href="<?php echo $contact; ?>">Контакты</a></li>
                        <?php else: ?>
                        <li><a href="<?php echo $contact; ?>">Contacts</a></li>
                        <?php endif; ?>
                    </ul>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>

    <?php if ($class == 'common-home'): ?>
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-sm-12 col-xs-12">
                <div class="head-block-home-left">
                    <div class="header-single-text">
                        <?php if ($lang == 'ru'): ?>
                        <h2>
                            Добро пожаловать на беларуский сайт онлайн заказов трансфера в
                            Минске и по всей Белоруссии. Трансферы в <a href="https://atb.by">Национальный Аэропорт Минск 2</a>,
                            города, санатории, пансионаты, базы отдыха, усадьбы, пограничные пункты,
                            достопримечательности
                        </h2>
                        <?php else: ?>
                        <h2>
                            Welcome to the Belarus site of online transfer orders in Minsk and
                            throughout Belarus. Transfers to Minsk <a href="#">National Airport 2</a>,
                            cities, sanatoriums, boarding houses, recreation centers,
                            homesteads, border points, points of interest
                        </h2>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-12 col-xs-12">
                <div class="head-block-home-right clearfix">
                    <div class="form-order-service">
                        <?php if ($lang == 'ru'): ?>
                        <h4>Быстрый заказ трансфера</h4>
                        <form action="#">
                            <input class="form-control-top" type="text" name="name" placeholder="Ваше имя">
                            <input class="form-control-top bfh-phone" type="text" name="phone" placeholder="375 (29) 120-20-20" data-format="ddd (dd) ddd-dd-dd">
                            <label for="version">Тип автомобиля</label>
                            <select name="version" id="version">
                                <option value="Седан"><span>Седан</span></option>
                                <option value="Универсал">Универсал</option>
                                <option value="Минивен">Минивен</option>
                            </select>
                            <div class="btn-form">
                                <input type="submit" name="submit" value="Оставить заявку">
                            </div>
                        </form>
                        <?php else: ?>
                        <h4>Quick transfer order</h4>
                        <form action="#">
                            <input class="form-control-top" type="text" name="name" placeholder="Your name">
                            <input class="form-control-top bfh-phone" type="text" name="phone" placeholder="Your phone number" data-format="ddd (dd) ddd-dd-dd">
                            <label for="version">Type of car</label>
                            <select name="version" id="version">
                                <option value="Седан"><span>Sedan</span></option>
                                <option value="Универсал">Wagon</option>
                                <option value="Минивен">Minivan</option>
                            </select>
                            <div class="btn-form">
                                <input type="submit" name="submit" value="Submit your application">
                            </div>
                        </form>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php endif; ?>

</div>

<?php if ($categories) { ?>
<div class="category-header-mobile">
    <div class="container">
        <nav id="menu" class="navbar">
            <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
                <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse"
                        data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <?php foreach ($categories as $category) { ?>
                    <?php if ($category['children']) { ?>
                    <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle"
                                            data-toggle="dropdown"><?php echo $category['name']; ?></a>
                        <div class="dropdown-menu">
                            <div class="dropdown-inner">
                                <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                <ul class="list-unstyled">
                                    <?php foreach ($children as $child) { ?>
                                    <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                                    <?php } ?>
                                </ul>
                                <?php } ?>
                            </div>
                            <a href="<?php echo $category['href']; ?>"
                               class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a></div>
                    </li>
                    <?php } else { ?>
                    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                    <?php } ?>
                    <?php } ?>
                </ul>
            </div>
        </nav>
    </div>
</div>
<?php } ?>