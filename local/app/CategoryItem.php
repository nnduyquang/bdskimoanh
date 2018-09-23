<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoryItem extends Model
{
    protected $fillable = [
        'name','path','description','image','image_mobile','level','parent_id','type','seo_id','order','isActive'
    ];
    protected $table = 'category_items';
    protected $hidden = ['id'];
    public function seos(){
        return $this->belongsTo('App\Seo','seo_id');
    }
    public function children()
    {
        return $this->hasMany('App\CategoryItem', 'parent_id')
            ->with('children');
    }

    public function posts(){
        return $this->belongsToMany('App\Post','category_many','category_id','item_id')->withTimestamps();
    }

    public function findAllChild($dd_categorie_posts, $parent_id = 0, &$newArray)
    {
        $dash = '';
        foreach ($dd_categorie_posts as $key => $data) {
            if ($data->parent_id == $parent_id) {
                if ($data->level != 0) {
                    for ($i = 0; $i <= $data->level; $i++)
                        $dash = $dash . '---';
                    $data->name = $dash . $data->name;
                    $dash = '';
                }
                array_push($newArray, $data);
                $dd_categorie_posts->forget($key);
                self::findAllChild($dd_categorie_posts, $data->id, $newArray);
            }
        }
    }

    public function getArrayCategory($type)
    {
        $list_category = $this->where('type', CATEGORY_POST)->orderBy('order')->get();
        $newArray = [];
        self::findAllChild($list_category, 0, $newArray);
        if ($type == 'create')
//            return array_pluck($newArray, 'name', 'id');
            return $newArray;
        else {
            $list_arr = array_pluck($newArray, 'name', 'id');
            return array_map(function ($index, $value) {
                return ['index' => $index, 'value' => $value];
            }, array_keys($list_arr), $list_arr);
        }
    }
    public function prepareParameters($parameters,$type)
    {
        if (!$parameters->has('isActive'))
            $parameters->request->add(['is_active' => null]);
        $parameters->request->add(['path' => '']);
        $parameters->request->add(['level' => 0]);
        switch ($type) {
            case'categoryproduct':
                $parameters->request->add(['type' => CATEGORY_PRODUCT]);
                break;
            case'categorypost':
                $parameters->request->add(['level' => CATEGORY_POST]);
                break;
        }
        $parent_id = $parameters->input('parent_id');
        if ($parent_id == '-1') {
            $parameters['parent_id'] = null;
            $parameters['level'] = 0;
        }else{
            $parameters['level']=self::findLevelById($parent_id)+1;
        }
        return $parameters;
    }

    public function findLevelById($id){
        return $this->where('id',$id)->first()->level;
    }

    public function getAllCategoryByType($type)
    {
        return $this->where('type', $type)->orderBy('order')->get();
    }
    public function getAllOrderBy($order,$type)
    {
        return $this->where('type', $type)->orderBy($order)->get();
    }

    public function getAllParent($order, $type)
    {
        $newArray = array();
        $categoryItems = self::getAllOrderBy($order,$type);
        foreach ($categoryItems as $key => $item) {
            if (!isset($item->parent_id)) {
                array_push($newArray, $item);
            }
        }
        return $newArray;
    }
    public function setIsActiveAttribute($value)
    {
        if (!IsNullOrEmptyString($value)) {
            $this->attributes['is_active'] = 1;
        } else {
            $this->attributes['is_active'] = 0;
        }
    }

    public function setPathAttribute($value)
    {
        if (IsNullOrEmptyString($value))
            $this->attributes['path'] = chuyen_chuoi_thanh_path($this->name);
    }

    public function setOrderAttribute($value)
    {
        if (IsNullOrEmptyString($value))
            $this->attributes['order'] = 1;
    }
    protected static function boot()
    {
        parent::boot();

        static::deleting(function ($categoryItem) { // before delete() method call this
            $categoryItem->seos->delete();
        });

    }
}
