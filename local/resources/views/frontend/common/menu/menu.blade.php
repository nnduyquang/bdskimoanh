<style>

    {{--#top_line {--}}
        {{--background-color: #f68121;--}}
        {{--width: 100%;--}}
        {{--height: 8px;--}}
    {{--}--}}

    {{--#top_menu {--}}
        {{--margin-bottom: 6px;--}}
        {{--margin-top: 8px;--}}
        {{--background-image: url({{URL::asset('images/bg/about-bg3.png')}});--}}
        {{--background-position: center right;--}}
        {{--background-size: auto 238%;--}}
        {{--background-repeat: no-repeat;--}}
    {{--}--}}

    {{--#top_menu ul {--}}
        {{--list-style-type: none;--}}
    {{--}--}}

    {{--#top_menu ul li {--}}
        {{--display: inline-flex;--}}
    {{--}--}}

    {{--#top_menu ul li a img {--}}
        {{--width: 138px;--}}
        {{--height: auto;--}}
    {{--}--}}

    {{--#top_menu #m_1 {--}}
        {{--/*background-color: #f68121;*/--}}
    {{--}--}}

    {{--#menu {--}}
        {{--background-color: #f68121;--}}
    {{--}--}}

    {{--#menu ul {--}}
        {{--list-style-type: none;--}}
    {{--}--}}

    {{--#menu ul li {--}}
        {{--display: inline-flex;--}}
        {{--margin-right: -3px;--}}
    {{--}--}}

    {{--#menu ul li a, #menu p {--}}
        {{--color: white;--}}
        {{--/*font-family: 'Kanit', sans-serif!important;*/--}}
        {{--/*font-weight: 600;*/--}}
        {{--padding: 18px 14px;--}}
        {{--transition: .3s;--}}
    {{--}--}}

    {{--#menu ul li:first-child a {--}}
        {{--padding: 18px 22px;--}}
    {{--}--}}

    {{--#menu ul li a.active {--}}
        {{--background-color: #144381;--}}
    {{--}--}}

    {{--#menu ul li a:hover {--}}
        {{--background-color: #144381;--}}
    {{--}--}}

    {{--#m_1 .logo-right i {--}}
        {{--width: 68px;--}}
        {{--height: 68px;--}}
        {{--border-radius: 50%;--}}
        {{--font-size: 38px;--}}
        {{--color: #f68121;--}}
        {{--border: 3px solid #f68121;--}}
        {{--text-align: center;--}}
        {{--line-height: 62px;--}}
    {{--}--}}

    {{--#m_1 .logo-right span {--}}
        {{--color: #5a5958;--}}
        {{--font-size: 14px;--}}
    {{--}--}}

    {{--#m_1 .logo-right p{--}}
        {{--padding-top: 3px;--}}
        {{--font-size: 16px;--}}
        {{--color: #f68121;--}}
        {{--/*font-weight:bold;*/--}}
    {{--}--}}
</style>
<div class="d-lg-block d-md-block d-none">
    <div id="top_line"></div>

    <div id="top_menu" class="container-fluid p-0 d-none d-md-block" style="background-image: url({{URL::asset('images/bg/about-bg3.png')}})">

        <div class="container" id="m_1">
            <div class="row">
                <div class="col-md-12 d-flex justify-content-between align-items-center">
                    <div>
                        <ul>
                            <li>
                                <a href="{{URL::asset('/')}}">
                                    <img src="{{URL::asset('images/logo/logo2.jpg')}}" alt="KIM OANH GROUP BẤT ĐỘNG SẢN">
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="logo-right d-flex align-items-center">

                        <div class="d-flex align-items-center">
                            <i class="fas fa-map-marked-alt"></i>
                            <div class="pl-3">
                                <span>Thông tin công ty!</span>
                                <p>Công ty CP DVTM và xây dựng địa ốc Kim Oanh</p>
                                <p>Lô B-13, QL13, Golden A, TX Bến Cát, tỉnh Bình Dương</p>
                            </div>
                        </div>

                        <div class="d-flex align-items-center ml-3">
                            <i class="fas fa-mobile-alt"></i>
                            <div class="pl-3">
                                <span>Gọi ngay chúng tôi!</span>
                                <p>0917 503 788</p>
                                <p>098 2324 578</p>
                            </div>
                        </div>


                    </div>

                    {{--<div>--}}
                    {{--<img src="{{URL::asset('images/icon/smartphone.png')}}" alt="" style="width: 100px;height: auto">--}}
                    {{--</div>--}}
                </div>
            </div>
        </div>

    </div>


    <div class="container-fluid" id="menu">
        <div class="container">
            <div class="row">
                <div class="col-md-12  d-flex justify-content-between align-items-center">
                    <ul>
                        <li><a class="{{ request()->is('/') ? 'active' : '/' }}" href="{{URL::asset('/')}}">TRANG
                                CHỦ</a></li>
                        <li><a class="{{ request()->is('gioi-thieu*') ? 'active' : '/'}}" href="{{URL::asset('/gioi-thieu.html')}}">GIỚI THIỆU</a></li>
                        <li><a class="{{ request()->is('tin-tuc*') ? 'active' : '/'}}" href="{{URL::asset('/tin-tuc.html')}}">TIN TỨC</a></li>
                        <li><a class="{{ request()->is('duan*') ? 'active' : '/'}}" href="{{URL::asset('/duan.html')}}">DỰ ÁN</a></li>
                        <li><a class="{{ request()->is('trang-tin*') ? 'active' : '/'}}" href="{{URL::asset('trang-tin.html')}}">VIDEO</a></li>
                        <li><a class="{{ request()->is('tuyen-dung*') ? 'active' : '/'}}" href="{{URL::asset('/tuyen-dung.html')}}">TUYỂN DỤNG</a></li>
                        <li><a class="{{ request()->is('lien-he*') ? 'active' : '/'}}" href="{{URL::asset('/lien-he.html')}}">LIÊN HỆ</a></li>
                    </ul>

                    {{--<div><p>HOTLINE : 0917 503 788</p></div>--}}
                </div>
            </div>
        </div>
    </div>
</div>


