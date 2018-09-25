<?php

namespace App\Repositories\Frontend;


use App\Location;
use App\Menu;

class FrontendRepository implements FrontendRepositoryInterface
{
    public function getFrontend()
    {
        $data = [];
        $location = new Location();
        $cities = $location->getAllCities();
        $data['cities'] = $cities;
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

    public function getAllMenuFrontend()
    {
        $data = [];
        $menu=new Menu();
        $data=$menu->getAllOrderBy('order');
        return $data;
    }


}