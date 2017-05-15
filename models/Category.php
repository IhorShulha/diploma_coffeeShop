<?php

namespace app\models;
use yii\db\ActiveRecord;

class Category extends ActiveRecord
{
    /**
     * @return array
     */
    public function behaviors()
    {
        return [
            'image' => [
                'class' => 'rico\yii2images\behaviors\ImageBehave',
            ]
        ];
    }

    /**
     * @return string
     */
    public static function tableName()
    {
        return 'category';
    }

    /**
     * @return \yii\db\ActiveQuery
     * Relationship with table product
     */
    public function getProducts()
    {
        return $this->hasMany(Product::className(), ['category_id' => 'id']);
    }

}