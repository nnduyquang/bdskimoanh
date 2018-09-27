<style>

    #r_n_n h4 {
        font-size: 14px;
        color: white;
        background-color: #f68121;
        padding: 10px 0px 8px 0px;
        text-align: center;
        /*font-weight: 600;*/
        border-radius: 4px 4px 0px 0px;
        margin-bottom: 20px;
        /*font-weight: bold;*/
    }

    #r_n_n .right-nav-content, #r_n_n .right-nav-quan {
        margin-top: -20px;
        background-color: #fdfcff;
    }

    #r_n_n .right-nav-content ul, #r_n_n .right-nav .right-nav-quan ul {
        list-style-type: none;
    }

    #r_n_n .right-nav-content ul li {
        position: relative;
        margin-bottom: 8px;
        padding-left: 20px;
    }

    #r_n_n .right-nav-content ul li a {
        color: #1f648b;
        transition: .3s;
    }

    #r_n_n .right-nav-content ul li a:hover {
        color: #f68121;
    }

    #r_n_n .right-nav-content ul li:before {
        content: '\f111';
        font-family: 'Font Awesome\ 5 Free';
        font-weight: 900;
        position: absolute;
        top: 50%;
        left: 0px;
        color: #144381;
        transform: translateY(-50%);
        font-size: 6px;
        font-style: normal;
    }

    #r_n_n .right-nav-quan ul li {
        margin-bottom: 8px;
        /*padding-left: 20px;*/
        text-overflow: ellipsis;
        overflow: hidden;
        width: 100%;
        height: 1.2em;
        white-space: nowrap;
    }

    #r_n_n .right-nav-quan ul li a {
        color: #1f648b;
        transition: .3s;
    }

    #r_n_n .right-nav-quan ul li a:hover {
        color: #f68121;
        padding-left: 3px;
    }

    #r_n_n .right-nav-quan .right-nav-tintuc .tintuc-img {
        width: 128px;
        height: 78px;
        background-position: center center;
        -webkit-background-size: cover;
        background-size: cover;
        background-repeat: no-repeat;

    }

    #r_n_n .right-nav-quan .right-nav-tintuc {
        margin-bottom: 10px;
    }

    #r_n_n .right-nav-quan .right-nav-tintuc h5 {
        /*font-weight: bold;*/
        font-size: 15px !important;
        margin-bottom: 8px;
    }

    #r_n_n .right-nav-quan .right-nav-tintuc h5 a {
        color: #007bff !important;
        transition: .3s;
    }

    #r_n_n .right-nav-quan .right-nav-tintuc h5 a:hover {
        color: #f68121 !important;
    }

    #r_n_n .right-nav-quan .right-nav-tintuc .tintuc-ngay a {
        width: 100%;
        color: #5e5d5d;
        text-align: right;
        font-size: 13px !important;
    }

</style>
<div id="r_n_n">
    <div class="col-12 mb-4">
        <h4>
            TIN TỨC LIÊN QUAN
        </h4>

        <div class="right-nav-quan border border-top-0 p-2">

            @foreach($listFrontEndInfo['posts'] as $key=>$item)
                <div class="right-nav-tintuc d-flex align-items-center">
                    <div class="tintuc-img"
                         style="background-image:url({{URL::asset($item->image)}});">

                    </div>

                    <div class="pl-3 pr-2" style="height: 72px">
                        <h5 class="">
                            <a href="{{URL::to('tin-tuc/'.$item->path)}}">{{$item->title}}</a>
                        </h5>
                        <div class="tintuc-ngay"><a href="">Ngày đăng tin: {{$item->created_at}}</a></div>
                    </div>
                </div>
            @endforeach

        </div>
    </div>

    <div class="col-12 mb-4">
        <h4>
            BẤT ĐỘNG SẢN THEO KHU VỰC
        </h4>

        <div class="right-nav-content border border-top-0 p-4">
            <ul>
                <li><a href="#">Thành Phố Mới</a></li>
                <li><a href="#">Bến Cát</a></li>
                <li><a href="#">Mỹ Phước</a></li>
                <li><a href="#">VSIP</a></li>
                <li><a href="#">Tp. Thủ Dầu Một</a></li>
                <li><a href="#">Tân Hòa</a></li>
                <li><a href="#">Bửu Hòa</a></li>
                <li><a href="#">Nhơn Trạch</a></li>
                <li><a href="#">Cát Lái</a></li>
                <li><a href="#">Phú Mỹ</a></li>
                <li><a href="#">Bà Rịa</a></li>
                <li><a href="#">Long Thành</a></li>
                <li><a href="#">Dầu Dây</a></li>
                <li><a href="#">Trảng Bom</a></li>
                <li><a href="#">Hóa An</a></li>
                <li><a href="#">Dĩ An</a></li>


            </ul>
        </div>
    </div>

    {{--<div class="col-12 mb-4">--}}
    {{--<h4>--}}
    {{--QUẬN 1--}}
    {{--</h4>--}}

    {{--<div class="right-nav-quan border border-top-0 p-4">--}}
    {{--<ul>--}}

    {{--@for ($i = 0; $i < 5; $i++)--}}
    {{--<li><a href="">Chung cư tại Indochina Park Tower</a></li>--}}
    {{--@endfor--}}

    {{--</ul>--}}
    {{--</div>--}}
    {{--</div>--}}

    {{--<div class="col-12 mb-4">--}}
    {{--<h4>--}}
    {{--QUẬN TÂN PHÚ--}}
    {{--</h4>--}}

    {{--<div class="right-nav-quan border border-top-0 p-4">--}}
    {{--<ul>--}}

    {{--@for ($i = 0; $i < 6; $i++)--}}
    {{--<li><a href="">Bán căn hộ chung cư tại Âu Cơ Tower</a></li>--}}
    {{--@endfor--}}

    {{--</ul>--}}
    {{--</div>--}}
    {{--</div>--}}

    {{--<div class="col-12 mb-4">--}}
    {{--<h4>--}}
    {{--QUẬN 7--}}
    {{--</h4>--}}

    {{--<div class="right-nav-quan border border-top-0 p-4">--}}
    {{--<ul>--}}

    {{--@for ($i = 0; $i < 5; $i++)--}}
    {{--<li><a href="">Căn hộ chung cư tại Phường Phú Mỹ</a></li>--}}
    {{--@endfor--}}

    {{--</ul>--}}
    {{--</div>--}}
    {{--</div>--}}

    {{--<div class="col-12 mb-4">--}}
    {{--<h4>--}}
    {{--BÌNH THẠNH--}}
    {{--</h4>--}}

    {{--<div class="right-nav-quan border border-top-0 p-4">--}}
    {{--<ul>--}}

    {{--@for ($i = 0; $i < 8; $i++)--}}
    {{--<li><a href="">Bán căn hộ chung cư tại Chung cư Mỹ Đức 123123</a></li>--}}
    {{--@endfor--}}

    {{--</ul>--}}
    {{--</div>--}}
    {{--</div>--}}


    <div class="col-12 mb-4">
        <h4>
            LIÊN KẾT
        </h4>

        <div class="right-nav-quan border border-top-0 p-4">
            <ul>
                <li><a href="#">Cho Thuê Nhà Quận Phú Nhuận</a></li>
                <li><a href="#">Cho Thuê Nhà Quận Gò Vấp</a></li>
                <li><a href="#">Cho Thuê Nhà Thủ Dầu Một</a></li>
                <li><a href="#">Bán Đất Quận 9</a></li>
                <li><a href="#">Căn Hộ VinGroup</a></li>
                <li><a href="#">Bán Đất Phú Quốc</a></li>
            </ul>
        </div>
    </div>
</div>