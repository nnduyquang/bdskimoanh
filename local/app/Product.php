<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
        'name','path','description','content','code' ,'image','sub_image','isActive','is_hot','price','sale','final_price','user_id','category_product_id','seo_id'
    ];
//    protected $hidden = ['id'];
    public function users()
    {
        return $this->belongsTo('App\User', 'user_id');
    }
    public function categoryproduct()
    {
        return $this->belongsTo('App\CategoryItem', 'category_product_id');
    }
    public function seos(){
        return $this->belongsTo('App\Seo','seo_id');
    }

}
