@extends('frontend.master')
@section('title')
    BẤT ĐỘNG SẢN KIM OANH
@stop
@section('description')
    BẤT ĐỘNG SẢN KIM OANH
@stop
@section('keyword')

@stop
@section('url-og')

@stop
@section('image-og')

@stop
@section('styles')
    {{ Html::style('css/themes/default/default.css') }}
@stop
@section('slider')
@include('frontend.common.slider')
@include('frontend.common.m-slider')
@stop
@section('container')
    <div class="container-fluid mt-3" id="h_1">
        <div class="container">
            <div class="row">
                <div class="col-md-8 p-lg-1 p-0">
                    @include('frontend.home.h_1')
                </div>
                <div class="col-md-4 p-lg-1 p-0">
                    @include('frontend.common.r_n_n')
                </div>
            </div>
        </div>
    </div>
@stop