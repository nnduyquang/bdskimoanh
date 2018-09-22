<?php

namespace App\Repositories\Frontend;

interface FrontendRepositoryInterface
{
    public function getFrontend();

    public function getAllDistrictsByCity($request);

    public function getAllWardsByDistrict($request);
}