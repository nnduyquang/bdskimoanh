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
    {{--@include('frontend.common.slider')--}}
@stop
@section('container')
    <div class="container-fluid mt-4">
        <div class="container">
            <div class="row">
                <div class="col-md-8" id="">
                    @include('frontend.product-details.pd_1')
                    @include('frontend.product-details.pd_2')
                    @include('frontend.product-details.pd_3')
                    @include('frontend.product-details.pd_4')
                </div>

                <div class="col-md-4">
                    @include('frontend.common.r_n_s')
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