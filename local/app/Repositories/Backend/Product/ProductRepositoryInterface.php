<?php

namespace App\Repositories\Backend\Product;

interface ProductRepositoryInterface
{
    public function showCreateProduct();

    public function getAllDistrictsByCity($request);

    public function getAllWardsByDistrict($request);

    public function createNewProduct($request);

    public function showEditProduct($id);

    public function updateProduct($request,$id);

    public function deleteProduct($id);

}
