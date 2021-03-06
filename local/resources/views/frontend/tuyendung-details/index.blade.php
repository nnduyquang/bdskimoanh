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
    @include('frontend.tuyendung.banner-title')
@stop
@section('container')
    <div class="container-fluid mt-4">
        <div class="container">
            <div class="row">
                <div class="col-md-8 p-lg-1 p-0" id="">
                    @include('frontend.tuyendung-details.nd_2')
                    @include('frontend.tuyendung-details.nd_1')
                </div>

                <div class="col-md-4 p-lg-1 p-0">
                    @include('frontend.common.r_n_n')
                </div>
            </div>
        </div>
    </div>
@stop

@section('jv-scripts')
    <script>
        $(document).ready(function(){

            $('#owl_ykkh').owlCarousel({
                loop:true,
                margin:10,
                nav:false,
                // dots:true,
                autoplay: true,
                autoplayTimeout: 3000,
                autoplayHoverPause: true,
                responsive:{
                    0:{
                        items:1,
                        // dots:true,
                    },
                    600:{
                        items:1,
                        // dots:true,
                    },
                    1000:{
                        items:1,
                        // dots:true,
                    }
                }
            });

        });
    </script>
@stop