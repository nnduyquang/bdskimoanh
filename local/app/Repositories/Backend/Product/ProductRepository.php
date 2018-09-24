<?php

namespace App\Repositories\Backend\Product;

use App\CategoryItem;
use App\Direction;
use App\Location;
use App\Repositories\EloquentRepository;
use App\Unit;

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
        $unit=new Unit();
        $categoryProduct=$categoryItem->getAllParent('order', CATEGORY_PRODUCT);
        $cities = $location->getAllCities();
        $directions=$direction->getAllDirection();
        $units=$unit->getAllUnit();
        $data['cities'] = $cities;
        $data['categoryProduct']=$categoryProduct;
        $data['directions']=$directions;
        $data['units']=$units;
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

    public function createNewProduct($request)
    {
        $data = [];
//        $seo = Seo::create($request->all());
        $request->request->add(['seo_id' => 1]);
        $parameters = $this->_model->prepareParameters($request);
        dd($parameters->all());
        $result = $this->_model->create($parameters->all());
        return $data;
    }


}