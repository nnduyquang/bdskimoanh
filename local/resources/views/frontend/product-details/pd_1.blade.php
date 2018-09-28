<style>


</style>

<div id="pd_1">

    <h1>{{$data->name}}</h1>

    <h2 class="khu-vuc mb-2">Khu vực: <a href="">Bán căn hộ chung cư tại Dream Home</a> - Quận Gò Vấp -
        Tp.HCM</h2>

    <ul>
        <li class="d-flex">
            <div class="span1">Mức giá</div>
            @if(is_null($data->price))
                <div class="span2">Không Xác Định</div>
            @else
                <div class="span2">{{$data->price}} {{$data->units->name}}</div>
            @endif
        </li>
        <li class="d-flex">
            <div class="span1">Diện tích</div>
            @if(is_null($data->area))
                <div class="span2">Không xác định</div>
            @else
                <div class="span2">{{$data->area}} m2</div>
            @endif
        </li>
    </ul>

    <h5>Thông tin chi tiết</h5>

    {!! $data->content !!}
    <br>

    <div class="row">
        <div class="col-12">
            <div id="owl_ykkh" class="owl-carousel owl-theme">
                @for ($i = 0; $i < 3; $i++)

                    <div class="owl-items d-flex flex-md-row flex-column justify-content-lg-start justify-content-center align-items-center">
                        <div class="owl-img">
                            <a href=""><img src="{{URL::asset('https://khangdiengroup.com.vn/wp-content/uploads/2018/08/D%E1%BB%B1-%C3%A1n-C%C4%83n-h%E1%BB%99-Lovera-Vista-B%C3%ACnh-Ch%C3%A1nh.jpg')}}"
                                 alt=""
                                 style="height: 100%;max-height: 300px;width: auto;margin: auto">
                            </a>
                        </div>
                    </div>

                @endfor
            </div>
        </div>
    </div>

</div>