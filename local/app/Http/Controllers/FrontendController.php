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

}

