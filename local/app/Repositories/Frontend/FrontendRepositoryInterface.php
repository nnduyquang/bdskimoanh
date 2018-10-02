<?php

namespace App\Repositories\Frontend;


interface FrontendRepositoryInterface
{
    public function getFrontend();

    public function getAllDistrictsByCity($request);

    public function getAllWardsByDistrict($request);

    public function getAllMenuFrontend();

    public function getFrontEndInfo();

    public function getDuAnDetail($path);

    public function getDetailTinTuc($path);

    public function getAllTintuc();

    public function getAllDuAn();

    public function getSearch($request);

    public function getPageGioiThieu();
}