<div id="p_1">
    <h4>
        TẤT CẢ BẤT ĐỘNG SẢN
    </h4>

    {{--<div class="row drop-sort" data-class="">--}}
        {{--<div class="col-md-12">--}}
            {{--<p class="mb-3">Tìm kiếm theo các tiêu chí: Loại BDS: <span>Bán căn hộ chung cư</span>. Tỉnh/Tp: <span>Tp.HCM</span>.--}}
                {{--Quận/Huyện: <span>Quận 1</span>. Có 890 bất động sản.</p>--}}
            {{--<select class="form-control" id="sel1">--}}
                {{--<option selected>Thông thường</option>--}}
                {{--<option>Giá thấp tới cao</option>--}}
                {{--<option>Giá cao tới thấp</option>--}}
                {{--<option>Diện tích lớn nhất</option>--}}
                {{--<option>Diện tích nhỏ nhất</option>--}}
            {{--</select>--}}
        {{--</div>--}}
    {{--</div>--}}
@foreach($data as $key=>$item)

        <div class="items-duan">
            <div class="row">
                <div class="col-md-3">
                    <a href="{{URL::to('/du-an/'.$item->path)}}">
                        <div class="img-overlay"><div class="img-duan"
                         style="background-image:url({{URL::asset($item->image)}});">
                    </div>
                        </div></a>
                </div>
                <div class="col-md-9">
                    <div class="tt-duan ml-lg-3 ml-0">
                        <h5><a href="{{URL::to('/du-an/'.$item->path)}}">{{$item->name}}</a></h5>
                        <div class="d-flex">
                            <p>Mức giá : </p>
                            @if(is_null($item->price))
                                <p>Thỏa Thuận</p>
                            @else
                                <p>{{$item->price}}</p>
                            @endif
                        </div>
                        <div class="d-flex">
                            <p>Diện Tích : </p>
                            @if(is_null($item->area))
                                <p>Chưa xác định</p>
                            @else
                                <p>{{$item->area}}</p>
                            @endif
                        </div>
                        <div class="d-flex">
                            <p>Địa Điểm : </p>
                            <p>{{$item->stringLocation}}</p>
                        </div>
                        <div>
                            <p class="tt-ngaydangtin">
                                <a href="">Ngày đăng tin: {{$item->created_at}}</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    @endforeach


    {{--<div class="row mb-3">--}}
        {{--<div class="col-12 d-flex justify-content-lg-start justify-content-center">--}}
            {{--<nav aria-label="Page navigation example">--}}
                {{--<ul class="pagination">--}}
                    {{--<li class="page-item"><a class="page-link" href="#">Previous</a></li>--}}
                    {{--<li class="page-item"><a class="page-link" href="#">1</a></li>--}}
                    {{--<li class="page-item"><a class="page-link" href="#">2</a></li>--}}
                    {{--<li class="page-item"><a class="page-link" href="#">3</a></li>--}}
                    {{--<li class="page-item"><a class="page-link" href="#">Next</a></li>--}}
                {{--</ul>--}}
            {{--</nav>--}}
        {{--</div>--}}
    {{--</div>--}}

</div>