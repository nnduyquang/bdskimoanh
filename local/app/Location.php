<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    protected $fillable = [
        'name', 'path', 'parent_id', 'order', 'is_active', 'seo_id'
    ];

    public function children()
    {
        return $this->hasMany('App\Location', 'parent_id')
            ->with('children');
    }

    public function seos()
    {
        return $this->belongsTo('App\Seo', 'seo_id');
    }

    public function getAllOrderBy($order)
    {
        return $this->orderBy($order)->get();
    }

    public function getAllParent($order)
    {
        $newArray = array();
        $locations = self::getAllOrderBy($order);
        foreach ($locations as $key => $item) {
            if (!isset($item->parent_id)) {
                array_push($newArray, $item);
            }
        }
        return $newArray;
    }

    public function getAllCities()
    {
        return $this->whereNull('parent_id')->get();
    }

    public function getAllChildById($id)
    {
        return $this->where('parent_id', $id)->get();
    }

    public function prepareParameters($parameters)
    {
        if (!$parameters->has('is_active'))
            $parameters->request->add(['is_active' => null]);
        $parameters->request->add(['path' => '']);
        $parent_id = $parameters->input('parent_id');
        if ($parent_id == '-1') {
            $parameters['parent_id'] = null;
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
