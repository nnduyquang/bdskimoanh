<style>
    #f_1 ul{
        list-style-type: none;
        padding-bottom: 10px;
        padding-top: 10px;
    }

    #f_1 ul li{
        position: relative;
        display: inline-flex;
        padding-right: 10px;
        padding-left: 10px;
        line-height: 20px;
    }

    #f_1 ul li a{
        color: #2a2a2a;
        /*font-weight: bold;*/
        font-size: 13px;
        font-weight: 500;
    }

    #f_1 ul li:after{
        position: absolute;
        content: '';
        width: 2px;
        height: 80%;
        background-color: #4a4948;
        right: 0;
        top: 50%;
        transform: translateY(-50%);
    }

    #f_1 ul li:nth-last-child(1):after{
        background-color: transparent;
    }

    #f_1 ul li:first-child{
        padding-left: 0px;
    }
    
    #f_2{
        background-color: #d8e8f8;
        padding-bottom: 30px;
    }

    #f_2 h5{
        font-weight: 600;
        padding-bottom: 16px;
        padding-top: 15px;
        text-align: center;
    }

    #f_2 a{
        font-size: 13px;
        color: #4a4a4b;
        padding-right:3px;
    }
    
    #f_3{
        background-color: #ee6e00;
        color: white;
        padding-top: 38px;
        padding-bottom: 38px;
    }

    #f_3 h2{
        font-weight: bold;
        font-size: 15px;
        padding-bottom: 3px;
    }

    #f_3 p{
        line-height: 18px;
        font-size: 14px;
    }

    @media only screen and (max-width: 800px) {

        #f_1 ul li:after{
            position: absolute;
            content: '';
            width: 2px;
            /*height: 90%;*/
            background-color: transparent;
            right: 0;
            top: -2px;
        }

    }
</style>

<div class="container" id="f_1">
    <div class="row">
        <div class="col-md-12 text-lg-left text-center">
            <ul>
                <li><a href="">GIỚI THIỆU</a></li>
                <li><a href="">HƯỚNG DẨN SỬ DỤNG</a></li>
                <li><a href="">QUY ĐỊNH</a></li>
                <li><a href="">LIÊN HỆ</a></li>
                <li><a href="">TIN TỨC DỰ ÁN</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="container-fluid" id="f_2">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h5>LIÊN KẾT NỔI BẬT</h5>
                @foreach($listFrontEndInfo['products'] as $key=>$item)
                <a href="{{URL::to('du-an/'.$item->path)}}">{{$item->name}},</a>
                @endforeach
                {{--<a href="">Bán căn hộ chung cư Quận 4,</a><a href="">Bán căn hộ chung cư Quận 5,</a><a href="">Bán căn hộ chung cư Quận 6,</a>--}}
                {{--<a href="">Bán căn hộ chung cư Quận 7,</a><a href="">Bán căn hộ chung cư Quận 7,</a><a href="">Bán căn hộ chung cư Quận 9,</a>--}}
                {{--<a href="">Bán căn hộ chung cư Quận 10,</a><a href="">Bán căn hộ chung cư Quận 11,</a><a href="">Bán căn hộ chung cư Quận 11,</a>--}}
                {{--<a href="">Bán căn hộ chung cư Huyện Nhà Bè,</a><a href="">Bán căn hộ chung cư Bình Dương,</a><a href="">Bán căn hộ chung cư Củ Chi,</a>--}}
                {{--<a href="">Bán căn hộ chung cư Quận Tân Phú,</a><a href="">Bán căn hộ chung cư Quận Bình Thạnh,</a><a href="">Bán căn hộ chung cư Đường D3,</a>--}}
                {{--<a href="">Bán căn hộ chung cư Đường D4,</a><a href="">Bán căn hộ chung cư Đường D1,</a><a href="">Bán căn hộ chung cư Đường D2,</a>--}}
                {{--<a href="">Bán căn hộ chung cư Quận 7,</a><a href="">Bán căn hộ chung cư Quận 7,</a><a href="">Bán căn hộ chung cư Quận 9,</a>--}}
                {{--<a href="">Bán căn hộ chung cư Quận 10,</a><a href="">Bán căn hộ chung cư Quận 11,</a><a href="">Bán căn hộ chung cư Quận 11,</a>--}}
            </div>
        </div>
    </div>
</div>

<div class="container-fluid" id="f_3">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h2>CÔNG TY CP DV TM VÀ XÂY DỰNG ĐỊA ỐC KIM OANH</h2>
                <p>Lô B-13, QL13, Golden A, TX Bến Cát, tỉnh Bình Dương</p>
                    <p>HOTLINE: 0917 503788 - 098 2324578</p>
            </div>
        </div>
    </div>
</div>
