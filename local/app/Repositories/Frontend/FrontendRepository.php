<?php

namespace App\Repositories\Frontend;


use App\Direction;
use App\Location;
use App\Menu;
use App\Post;
use App\Product;
use http\Env\Request;

class FrontendRepository implements FrontendRepositoryInterface
{
    public function getFrontend()
    {
        $data = [];
        $location = new Location();
        $direction = new Direction();
        $data['cities'] = $location->getAllCities();
        $data['directions'] = $direction->getAllDirection();
        $product = new Product();
        $products = $product->getAllProductsOrderBy('order');
        foreach ($products as $key => $item) {
            $item->stringLocation = $location->getStringLocatationById($item->location_id);
        }
        $data['products'] = $products;

        return $data;
    }

    public function getFrontEndInfo()
    {
        $data = [];
        $post = new Post();
        $posts = $post->getAllPostSidebar();
        $data['posts'] = $posts;
        $product = new Product();
        $products = $product->getAllProductsOrderBy('order');
        $data['products'] = $products;
        $location = new Location();
        $direction = new Direction();
        $data['cities'] = $location->getAllCities();
        $data['directions'] = $direction->getAllDirection();
        $data['area']=$location->getListLocationByArrayId([17,2,4,24,23,8]);
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
        $menu = new Menu();
        $data = $menu->getAllOrderBy('order');
        return $data;
    }

    public function getDuAnDetail($path)
    {
        $data = [];
        $product = new Product();
        $location = new Location();
        $data['product']=$product->findProductByPath($path);
        $data['other']=$product->findProductOther($data['product']->id);
        foreach ($data['other'] as $key => $item) {
            $item->stringLocation = $location->getStringLocatationById($item->location_id);
        }
        return $data;
    }

    public function getDetailTinTuc($path)
    {
        $post = new Post();
        return $post->findPostByPath($path);
    }

    public function getAllTintuc()
    {
        $post = new Post();
        return $post->getAllPostByCategory(3);
    }

    public function getAllDuAn()
    {
        $product = new Product();
        $location = new Location();
        $products = $product->getAllProductsOrderBy('order');
        foreach ($products as $key => $item) {
            $item->stringLocation = $location->getStringLocatationById($item->location_id);
        }
        return $products;
    }

    public function getSearch($request)
    {
        $product = new Product();
        $location = new Location();
        $products=$product->searchProduct($request);
        foreach ($products as $key => $item) {
            $item->stringLocation = $location->getStringLocatationById($item->location_id);
        }
        return $products;
    }

    public function getPageGioiThieu()
    {
        $post = new Post();
        return $post->findPostByPath('gioi-thieu');
    }

    public function getDuAnTheoDiaDiem($path)
    {
        $product = new Product();
        $location = new Location();
        $diadiem=$location->getLocationByPath($path);
        $locationChildID = $location->getAllChildAndDeeperById($diadiem->id);
        $finalId = $locationChildID->pluck('id');
        $finalId->push((int)$diadiem->id);
        $products =  $product->whereIn('location_id', $finalId)->get();
        foreach ($products as $key => $item) {
            $item->stringLocation = $location->getStringLocatationById($item->location_id);
        }
        return $products;
    }

    public function getAllTuyenDung()
    {
        $post = new Post();
        return $post->getAllPostByCategory(4);
    }

    public function getDetailTuyenDung($path)
    {
        $data=[];
        $post = new Post();
        $data['post']=$post->findPostByPath($path);
        $data['other']=$post->findPostOther($data['post']->id);
        return $data;
    }


}