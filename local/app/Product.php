<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

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

    public function seos()
    {
        return $this->belongsTo('App\Seo', 'seo_id');
    }

    public function prepareParameters($parameters)
    {
        $city = $parameters->input('select-city');
        $district = $parameters->input('select-district');
        $ward = $parameters->input('select-ward');
        $parameters->request->add(['location_id' => null]);
        if ($district == '-1') {
            if ($ward == '-1')
                $parameters['location_id'] = $city;
            else {
                $parameters['location_id'] = $ward;
            }
        } else {
            if ($ward == '-1') {
                $parameters['location_id'] = $district;
            }
            else{
                $parameters['location_id'] = $ward;
            }
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
