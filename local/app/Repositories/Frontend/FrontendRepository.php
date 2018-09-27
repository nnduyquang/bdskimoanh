<?php

namespace App\Repositories\Frontend;


use App\Location;
use App\Menu;
use App\Post;
use App\Product;

class FrontendRepository implements FrontendRepositoryInterface
{
    public function getFrontend()
    {
        $data = [];
        $location = new Location();
        $cities = $location->getAllCities();
        $data['cities'] = $cities;
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
        $product = new Product();
        return $product->findProductByPath($path);
    }

    public function getDetailTinTuc($path)
    {
        $post = new Post();
        return $post->findPostByPath($path);
    }

    public function getAllTintuc()
    {
        $post = new Post();
        return $post->getAllPost();
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


}