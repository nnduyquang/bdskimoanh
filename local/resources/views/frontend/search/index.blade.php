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
    {{--@include('frontend.common.banner-title')--}}
@stop
@section('container')

    <div class="container-fluid mt-4">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    @include('frontend.search.p_1')
                </div>
                <div class="col-md-4">
                    @include('frontend.common.r_n_s')
                </div>
            </div>
        </div>
    </div>
@stop

@section('jv-scripts')
@stop