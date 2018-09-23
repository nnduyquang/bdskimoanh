<?php

namespace App\Repositories\Backend\Product;

interface ProductRepositoryInterface
{
    public function showCreateProduct();
    public function getAllDistrictsByCity($request);
    public function getAllWardsByDistrict($request);
}
