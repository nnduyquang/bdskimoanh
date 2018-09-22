<?php

namespace App\Repositories\Backend\Product;

use App\Repositories\EloquentRepository;

class ProductRepository extends EloquentRepository implements ProductRepositoryInterface{
    public function getModel()
    {
        return \App\Product::class;
    }



}