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
    @include('frontend.videos.p_banner')
@stop
@section('container')
    @include('frontend.videos.video-lightbox')
    @include('frontend.videos.p_content')
@stop

@section('jv-scripts')
    <script>
        function revealVideo(div,video_id,src_video) {
            var video = document.getElementById(video_id).src;
            document.getElementById(video_id).src = src_video+'?showinfo=0&autoplay=1'; // adding autoplay to the URL
            document.getElementById(div).style.display = 'block';
        }

        // Hiding the lightbox and removing YouTube autoplay
        function hideVideo(div,video_id) {
            var video = document.getElementById(video_id).src;
            var cleaned = video.replace('&autoplay=1',''); // removing autoplay form url
            document.getElementById(video_id).src = cleaned;
            document.getElementById(div).style.display = 'none';
        }
    </script>
@stop