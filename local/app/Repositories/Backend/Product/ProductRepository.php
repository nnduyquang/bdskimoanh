<?php

namespace App\Repositories\Backend\Product;

use App\CategoryItem;
use App\Direction;
use App\Location;
use App\Repositories\EloquentRepository;

class ProductRepository extends EloquentRepository implements ProductRepositoryInterface{
    public function getModel()
    {
        return \App\Product::class;
    }

    public function showCreateProduct()
    {
        $data = [];
        $location = new Location();
        $categoryItem=new CategoryItem();
        $direction= new Direction();
        $categoryProduct=$categoryItem->getAllParent('order', CATEGORY_PRODUCT);
        $cities = $location->getAllCities();
        $directions=$direction->getAllDirection();
        $data['cities'] = $cities;
        $data['categoryProduct']=$categoryProduct;
        $data['directions']=$directions;
        return $data;
    }
    public function getAllDistrictsByCity($request)
    {
        $data = [];
        $id = $request['id'];
        $location = new Location();
        $wards = $location->getAllChildById($id);
        $data['success'] = 'success';
        $data['districts'] = $wards;
        return $data;
    }

    public function getAllWardsByDistrict($request)
    {
        $data = [];
        $id = $request['id'];
        $location = new Location();
        $wards = $location->getAllChildById($id);
        $data['success'] = 'success';
        $data['wards'] = $wards;
        return $data;
    }


}