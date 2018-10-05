<div class="d-lg-block d-md-block d-none">
    <div id="top_line"></div>
    <div id="top_menu" class="container-fluid"
         style="background-image: url({{URL::asset('images/bg/about-bg3.png')}})">

        <div class="container pt-4 pb-4" id="m_1">
            <div class="row">
                <div class="col-md-12 d-flex justify-content-between align-items-center">
                    <div>
                        <ul>
                            <li>
                                <a href="{{URL::asset('/')}}">
                                    <img src="{{URL::asset('images/logo/284x68_fw_vi_logo.png')}}"
                                         alt="KIM OANH GROUP BẤT ĐỘNG SẢN">
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="logo-right d-flex align-items-center">

                        <div class="d-flex align-items-center">
                            <i class="fas fa-map-marked-alt"></i>
                            <div class="pl-3">
                                <span>Thông tin công ty!</span>
                                <p>{{$listFrontEndInfo['namecompany']}}</p>
                                <p>{!! $listFrontEndInfo['contact'] !!}</p>
                            </div>
                        </div>

                        <div class="d-flex align-items-center ml-3">
                            <i class="fas fa-mobile-alt"></i>
                            <div class="pl-3">
                                <span>Gọi ngay chúng tôi!</span>
                                <p style="font-size: 20px;font-weight: bold">{{$listFrontEndInfo['phone1']}}</p>
                                <p style="font-size: 20px;font-weight: bold">{{$listFrontEndInfo['phone2']}}</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </div>

    <div class="container-fluid" id="menu">
        <div class="container">
            <div class="row">
                <div class="col-md-12  d-flex justify-content-between align-items-center">
                    <ul>
                        @foreach($listMenu as $key=>$item)
                            <li><a class="{{ request()->is($item->url) ? 'active' : '/' }}"
                                   href="{{URL::to($item->url)}}">{{$item->title}}</a></li>
                        @endforeach
                    </ul>
                    <div><p style="font-size: 18px;font-weight: bold">HOTLINE : {{$listFrontEndInfo['hotline']}}</p></div>
                </div>
            </div>
        </div>
    </div>
</div>


