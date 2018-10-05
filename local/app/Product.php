<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class Product extends Model
{
    protected $fillable = [
        'name', 'path', 'description', 'content','num_bed','map' ,'code', 'image', 'sub_image', 'is_active', 'is_hot', 'price', 'area', 'user_id', 'seo_id', 'location_id', 'direction_id', 'unit_id'
    ];

//    protected $hidden = ['id'];
    public function users()
    {
        return $this->belongsTo('App\User', 'user_id');
    }

    public function categoryitems($type)
    {
        return $this->belongsToMany('App\CategoryItem', 'category_many', 'item_id', 'category_id')->withPivot('type')->wherePivot('type', $type)->withTimestamps();
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
        if (!$parameters->input('is_active')) {
            $parameters->request->add(['is_active' => null]);
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
        if ($parameters->input('image-choose')) {
            $listImage = $parameters->input('image-choose');
            $subImage = '';
            if (count($listImage) != 0) {
                foreach ($listImage as $key => $item) {
                    if (hasHttpOrHttps($item))
                        $subImage = $subImage . substr($item, strpos($item, 'images'), strlen($item) - 1) . ';';
                    else {
                        $subImage = $subImage . $item . ';';
                    }
                }
                $parameters->request->add(['sub_image' => substr($subImage, 0, -1)]);
            }
        } else {
            $parameters->request->add(['sub_image' => null]);
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

    public function getCreatedAtAttribute($date)
    {
        return Carbon::createFromFormat('Y-m-d H:i:s', $date)->format('d-m-Y');
    }

    public function getAllProductsOrderBy($order)
    {
        return $this->where('is_active', ACTIVE)->orderBy($order)->get();
    }

    public function findProductByPath($path)
    {
        return $this->wherePath($path)->first();
    }

    public function findProductOther($id)
    {
        return $this->where('id','!=',$id)->get();
    }
//    public function findProductByLocationID($id)
//    {
//        return $this->whereLocationId($id)->get();
//    }

    public function searchProduct($request)
    {
        $cityID = $request->input('select-city');
        $districtID = $request->input('select-district');
        $wardID = $request->input('select-ward');
        $area = $request->input('select-area');
        $price = $request->input('select-price');
        $numBed = $request->input('select-num-bed');
        $directionID = $request->input('select-direction');
        $productID = $request->input('select-project');
        $products = $this->query();
        $location = new Location();
        if ($cityID != '-1') {
            if ($districtID != '-1') {
                if ($wardID != '-1') {
                    $products->where('location_id', $wardID);
                } else {
                    $locationChildID = $location->getAllChildAndDeeperById($districtID);
                    $finalId = $locationChildID->pluck('id');
                    $finalId->push((int)$districtID);
                    $products->whereIn('location_id', $finalId);
                }
            } else {
                $locationChildID = $location->getAllChildAndDeeperById($cityID);
                $finalId = $locationChildID->pluck('id');
                $finalId->push((int)$cityID);
                $products->whereIn('location_id', $finalId);
            }
        }
        if ($area != '-1') {
            switch ($area) {
                case "0":
                    $products->whereNull('area');
                    break;
                case "500":
                    $products->where('area', '>=', 500);
                    break;
                default:
                    $num = explode("-", $area);
                    $products->where('area', '>', $num[0])->where('area', '<=', $num[1]);
                    break;
            }
        }
        if ($price != '-1') {
            switch ($price) {
                case "0":
                    $products->whereNull('price');
                    break;
                case "500":
                    $products->where('price', '>=', 500);
                    break;
                default:
                    $num = explode("-", $price);
                    $products->where('price', '>', $num[0])->where('area', '<=', $num[1]);
                    break;
            }
        }
        if($productID!=-1){
            $products->where('id', $productID);
        }
        if($numBed!=-1){
            switch($numBed){
                case"0":
                    $products->whereNull('num_bed');
                    break;
                default:
                    $products->where('num_bed', $numBed);
                    break;
            }
        }
        if($directionID!=-1){
            $products->where('direction_id', $directionID);
        }
        return $products->get();

    }

    protected static function boot()
    {
        parent::boot();

        static::deleting(function ($product) { // before delete() method call this
            $product->seos->delete();
            $product->categoryitems(CATEGORY_PRODUCT)->detach();
        });

    }

}
