<!DOCTYPE Html>
<Html lang="en-US" class="lang-en_US" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<meta http-equiv="content-type" content="text/Html;charset=UTF-8"/>
<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# article: http://ogp.me/ns/article#">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>@yield('title')</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="keywords" content="@yield('keyword')">
    <meta name="description" content="@yield('description')">
    <meta name="viewport" content="width=device-width">
    <meta property="og:title" content="@yield('title')" />
    {{--<meta property="og:type" content="article" />--}}
    <meta property="og:url" content="@yield('url-og')" />
    <meta property="og:image" content="@yield('image-og')" />
    <meta property="og:description" content="@yield('description')" />
    <link rel="shortcut icon" href="{{URL::asset('images/icon/favicon.ico')}}" type="image/x-icon">
    <link rel="icon" href="{{URL::asset('images/icon/favicon.ico')}}" type="image/x-icon">
    {{--<meta property="og:site_name" content="Site Name, i.e. Moz" />--}}
    {{ Html::style('css/core.common.css') }}
    {{ Html::style('css/core.frontend.css') }}
    {{ Html::style('css/frontend.css') }}
    @yield('styles')
</head>
<body>
<header id="header">

</header>

<div id="blurrMe">
    @include('frontend.common.menu.m-menu')
    @include('frontend.common.menu.menu')
    @yield('slider')
    @yield('container')
</div>
@include('frontend.common.menu.m-sidebar')
<div class="footer">
    @include('frontend.common.footer')
</div>
{{ Html::script('js/core.common.js') }}
{{ Html::script('js/core.frontend.js') }}
{{ Html::script('js/ulti.js') }}
<script type="text/javascript">
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
</script>
{{ Html::script('js/scripts.js') }}
@yield('jv-scripts')
<div class="callback d-lg-none d-md-none">
    <div class="phone_animation">
        <div class="phone_animation_circle"></div>
        <div class="phone_animation_circle_fill"></div>
        <a href="tel:{{$listFrontEndInfo['hotline']}}" class="phone_animation_circle_fill_img"><i class="fas fa-phone"
                                                                            aria-hidden="true"></i></a>
    </div>
</div>
<div class="callback d-none d-md-block" style="right: 0px;bottom: -10px;left:inherit">
    <div class="phone_animation">
        <div class="phone_animation_circle"></div>
        <div class="phone_animation_circle_fill"></div>
        <a href="tel:{{$listFrontEndInfo['hotline']}}" class="phone_animation_circle_fill_img"><i class="fas fa-phone"
                                                                            aria-hidden="true"></i></a>
    </div>
</div>
{{--<div class="mess_desk_bot d-none d-md-block" style="position: fixed;bottom:40px;right: 0px;">--}}
    {{--<a href="tel:0962599482" style="display: block;width: 260px;height: 56px;background: url({{URL::to('images/nenhot.png')}}) no-repeat;text-align: center;padding-top: 10px;color:#fff;font-size: 20px;font-family: 'roboto-bold'">--}}
    {{--</a>--}}
{{--</div>--}}

<div id="fb-root"></div>
<script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js#xfbml=1&version=v2.12&autoLogAppEvents=1';
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
</body>

</Html>