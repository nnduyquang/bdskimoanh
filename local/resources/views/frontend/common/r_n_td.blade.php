<style>

    #r_n_td h4{
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

    #r_n_td  .right-nav-content, #r_n_td .right-nav-quan {
        margin-top: -20px;
        background-color: #fdfcff;
    }

    #r_n_td .right-nav-content ul, #r_n_td .right-nav .right-nav-quan ul {
        list-style-type: none;
    }

    #r_n_td  .right-nav-content ul li {
        position: relative;
        margin-bottom: 8px;
        padding-left: 20px;
    }

    #r_n_td  .right-nav-content ul li a {
        color: #1f648b;
        transition: .3s;
    }

    #r_n_td .right-nav-content ul li a:hover {
        color: #f68121;
    }

    #r_n_td  .right-nav-content ul li:before {
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

    #r_n_td  .right-nav-quan ul li {
        margin-bottom: 8px;
        /*padding-left: 20px;*/
        text-overflow: ellipsis;
        overflow: hidden;
        width: 100%;
        height: 1.2em;
        white-space: nowrap;
    }

    #r_n_td .right-nav-quan ul li a {
        color: #1f648b;
        transition: .3s;
    }

    #r_n_td .right-nav-quan ul li a:hover {
        color: #f68121;
        padding-left: 3px;
    }

    #r_n_td .right-nav-quan .right-nav-tintuc .tintuc-img {
        width: 128px;
        height: 68px;
        background-position: center center;
        -webkit-background-size: cover;
        background-size: cover;
        background-repeat: no-repeat;
        overflow: hidden;
    }

    #r_n_td .right-nav-quan .right-nav-tintuc {
        margin-bottom: 10px;
    }

    #r_n_td .right-nav-quan .right-nav-tintuc h5 {
        /*font-weight: bold;*/
        font-size: 15px !important;
        margin-bottom: 3px;
    }

    #r_n_td .right-nav-quan .right-nav-tintuc h6 {
        font-weight: normal;
        font-size: 14px !important;
        color: #5e5d5d;

    }

    #r_n_td .right-nav-quan .right-nav-tintuc h5 a {
        color: #1f648b !important;
        transition: .3s;
    }

    #r_n_td .right-nav .right-nav-quan .right-nav-tintuc h5 a:hover {
        color: #f68121 !important;
    }

    #r_n_td .right-nav-quan .right-nav-tintuc .tintuc-ngay a {
        width: 100%;
        text-align: right;
        font-size: 13px !important;
    }

</style>
<div id="r_n_td">
    <div class="col-12 mb-4">
        <h4>
            TIN TỨC TUYỂN DỤNG
        </h4>

        <div class="right-nav-quan border border-top-0 p-2">

            @for ($i = 0; $i < 5; $i++)
                <div class="right-nav-tintuc d-flex align-items-center">
                    <a href=""><div class="tintuc-img"
                         style="background-image:url({{URL::asset('images/duan/20170316163647-bb85.jpg')}});">

                    </div></a>

                    <div class="pl-3 pr-2" style="height: 72px">
                        <h5 class="">
                            <a href="">Bán gấp căn hộ Topaz city, Full nội thất.</a>
                        </h5>
                        <h6>Lương: Thỏa thuận</h6>
                        <div class="tintuc-ngay"><a href="">Ngày đăng tin: 13/09/2018</a></div>
                    </div>
                </div>
            @endfor

        </div>
    </div>

    @include('frontend.common.menu-r.mnr_1')
    @include('frontend.common.menu-r.mnr_2')

</div>