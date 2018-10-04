<?php

namespace App\Http\Controllers;

use App\Repositories\Frontend\FrontendRepositoryInterface;
use Illuminate\Http\Request;

class FrontendController extends Controller
{
    protected $frontendRepository;

    public function __construct(FrontendRepositoryInterface $frontendRepository)
    {
        $this->frontendRepository = $frontendRepository;
    }

    public function getFrontend()
    {
        $data = $this->frontendRepository->getFrontend();
        return view('frontend.home.index', compact('data'));
    }
    public function getAllDistrictsByCity(Request $request){
        $data = $this->frontendRepository->getAllDistrictsByCity($request);
        return response()->json([
            'success' => $data['success'],
            'districts' => $data['districts']
        ]);
    }
    public function getAllWardsByDistrict(Request $request){
        $data = $this->frontendRepository->getAllWardsByDistrict($request);
        return response()->json([
            'success' => $data['success'],
            'wards' => $data['wards']
        ]);
    }
    public function getDuAnDetail($path){
        $data = $this->frontendRepository->getDuAnDetail($path);
        $product=$data['product'];
        $other=$data['other'];
        return view('frontend.product-details.index', compact('product','other'));
    }
    public function getDetailTinTuc($path){
        $data = $this->frontendRepository->getDetailTinTuc($path);
        return view('frontend.news-details.index', compact('data'));
    }
    public function getAllTintuc(){
        $data = $this->frontendRepository->getAllTintuc();
        return view('frontend.news.index', compact('data'));
    }
    public function getAllTuyenDung(){
        $data = $this->frontendRepository->getAllTuyenDung();
        return view('frontend.tuyendung.index', compact('data'));
    }
    public function getAllDuAn(){
        $data = $this->frontendRepository->getAllDuAn();
        return view('frontend.products.index', compact('data'));
    }
    public function getDuAnTheoDiaDiem($path){
        $data = $this->frontendRepository->getDuAnTheoDiaDiem($path);
        return view('frontend.products.index', compact('data'));
    }
    public function getSearch(Request $request){
        $data = $this->frontendRepository->getSearch($request);
        return view('frontend.search.index', compact('data'));
    }
    public function getPageGioiThieu(){
        $data = $this->frontendRepository->getPageGioiThieu();
        return view('frontend.page.index', compact('data'));
    }
    public function getDetailTuyenDung($path){
        $data = $this->frontendRepository->getDetailTuyenDung($path);
        $post=$data['post'];
        $other=$data['other'];
        return view('frontend.tuyendung-details.index', compact('post','other'));
    }

}

