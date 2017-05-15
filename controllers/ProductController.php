<?php
/**
 * Created by PhpStorm.
 * User: Ihor
 * Date: 27.04.2017
 * Time: 15:05
 */

namespace app\controllers;
use app\models\Category;
use app\models\Product;
use Yii;

class ProductController extends AppController
{
    public function actionView($id)
    {
        //$id = Yii::$app->request->get('id');
        $product = Product::findOne($id);
        if(empty($product))
            throw new \yii\web\HttpException(404, 'Такого товара нет');

        //$product = Product::find()->with('category')->where(['id' => $id]) -> limit(1)->one();
        $hits = Product::find()->where(['hit' => '1'])->limit(6)->all();
        $this->setMeta('CoffeShop | ' . $product->name, $product->keywords, $product->description);
        return $this->render('view', compact('product', 'hits'));
    }
}