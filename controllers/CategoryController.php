<?php

namespace app\controllers;
use app\models\Category;
use app\models\Product;
use Yii;
use yii\data\Pagination;
use yii\web\HttpException;

class CategoryController extends AppController
{
    public function actionIndex()
    {
        $hits = Product::find()->where(['hit' => '1'])->limit(6)->all();
        //debug($hits);
        $this->setMeta('CoffeShop');
        return $this->render('index', compact('hits'));
    }

    public function actionView($id){
        //$id = Yii::$app->request->get('id');
        $category = Category::findOne($id);
        if(empty($category))
            throw new \yii\web\HttpException(404, 'Такой категории нет');


        $query = Product::find()->where(['category_id' => $id]);
        $pages = new Pagination([
            'totalCount' => $query->count(),
            'pageSize' => 3,
            'forcePageParam' => false,
            'pageSizeParam' => false
        ]);
        $products = $query->offset($pages->offset)->limit($pages->limit)->all();
        $category = Category::findOne($id);
        $this->setMeta('CoffeShop | ' . $category->name, $category->keywords, $category->description);
        return $this->render('view', compact('products', 'pages', 'category'));
    }

    public function actioSearch()
    {
        $q = trim(Yii::$app->request->get('q'));
        $this->setMeta('CoffeShop | Поиск: ' . $q);
        if (!$q)
            return $this->render('search');
        $query = Product::find()->where(['like', 'name', $q]);
        $pages = new Pagination([
            'totalCount' => $query->count(),
            'pageSize' => 3,
            'forcePageParam' => false,
            'pageSizeParam' => false
        ]);
        $products = $query->offset($pages->offset)->limit($pages->limit)->all();
        return $this->render('search', compact('products', 'pages', 'q'));
    }
}