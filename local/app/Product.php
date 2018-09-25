<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class Product extends Model
{
    protected $fillable = [
        'name', 'path', 'description', 'content', 'code', 'image', 'sub_image', 'is_active', 'is_hot', 'price', 'area', 'user_id', 'seo_id', 'location_id', 'direction_id', 'unit_id'
    ];

//    protected $hidden = ['id'];
    public function users()
    {
        return $this->belongsTo('App\User', 'user_id');
    }

    public function categoryitems()
    {
        return $this->belongsToMany('App\CategoryItem', 'category_many', 'item_id', 'category_id')->withTimestamps();
    }

    public function seos()
    {
        return $this->belongsTo('App\Seo', 'seo_id');
    }

    public function units()
    {
        return $this->belongsTo('App\Unit', 'unit_id');
    }


    public function prepareParameters($parameters)
    {
        $city = $parameters->input('select-city');
        $district = $parameters->input('select-district');
        $ward = $parameters->input('select-ward');
        $parameters->request->add(['location_id' => null]);
        $parameters->request->add(['path' => '']);
        $parameters->request->add(['user_id' => Auth::user()->id]);
        if ($parameters->input('select-unit') != -1) {
            $parameters->request->add(['unit_id' => $parameters->input('select-unit')]);
        }
        if (!$parameters->input('list_category_id')) {
            $parameters->request->add(['list_category_id' => [1]]);
        }
        if ($city != '-1') {
            if ($district == '-1') {
                if ($ward == '-1')
                    $parameters['location_id'] = $city;
                else {
                    $parameters['location_id'] = $ward;
                }
            } else {
                if ($ward == '-1') {
                    $parameters['location_id'] = $district;
                } else {
                    $parameters['location_id'] = $ward;
                }
            }
        } else {
            $parameters['location_id'] = 1;
        }
        return $parameters;

    }

    public function setIsActiveAttribute($value)
    {
        if (!IsNullOrEmptyString($value)) {
            $this->attributes['is_active'] = 1;
        } else {
            $this->attributes['is_active'] = 0;
        }
    }

    public function setImageAttribute($value)
    {
        if ($value) {
            $this->attributes['image'] = substr($value, strpos($value, 'images'), strlen($value) - 1);
        } else
            $this->attributes['image'] = null;
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

}
