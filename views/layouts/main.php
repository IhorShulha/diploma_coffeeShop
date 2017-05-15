<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
<body>
<?php $this->beginBody() ?>
<header id="header"><!--header-->
    <div class="header-middle"><!--header-middle-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="logo pull-left">
                        <a href="<?= \yii\helpers\Url::home()?>"><?=Html::img ('', ['alt' => 'CoffeShop'])?></a>
                    </div>
                    <div class="btn-group pull-right">

                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="shop-menu pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href="#" onclick="return getCart()"><i class="fa fa-shopping-cart"></i> Корзина</a></li>
                            <li><a href="<?=\yii\helpers\Url::to(['/admin'])?>"><i class="fa fa-lock"></i> Войти</a></li>
                            <?php if(!Yii::$app->user->isGuest): ?>
                            <li><a href="<?= yii\helpers\Url::to(['site/logout'])?>"><i class="fa fa-user"></i><?=Yii::$app->user->identity['username']?> (Выход) </a></li>
                            <?php endif;?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-middle-->

    <div class="header-bottom"><!--header-bottom-->
        <div class="container">
                <div class="col-sm-3">
                    <div class="search_box pull-right">
                        <form method="get" action="<?=\yii\helpers\Url::to(['category/search'])?>">
                        <input type="text" placeholder="Поиски по сайту" name="q"/>
                        </form>
                    </div>
                </div>
    </div><!--/header-bottom-->
</header><!--/header-->

<?= $content ?>


<footer id="footer"><!--Footer-->
    <div class="footer-widget">
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>Наши услуги</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>О нас</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>Доставка</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>Наши новости</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                        </ul>
                    </div>
                </div>
                </div>

            </div>
        </div>
    </div>

    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <p class="pull-left">Copyright © 2017</p>
               </div>
        </div>
    </div>

</footer><!--/Footer-->

<?php
\yii\bootstrap\Modal::begin([
        'header' => '<h2>Корзина</h2>',
        'id' => 'cart',
        'footer' => '<button type="button" class="btn btn-default"
        data-dismiss="modal">Продолжить покупку</button>
        <a href="' . yii\helpers\Url::to(['cart/view']). '" class="btn btn-primary">Оформить заказ</a>
        <button type="button" class="btn btn-danger" onclick="clearCart()">Очистить корзину</button>'
]);

\yii\bootstrap\Modal::end();
?>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>