
<div id="n_2" class="mt-1">
    <h4>
        TUYỂN DỤNG BẤT ĐỘNG SẢN
    </h4>

    <div class="row drop-sort">
        <div class="col-md-12 mt-3">
            <p class="mb-1">Tìm kiếm theo các tiêu chí: Loại BDS: <span>Bán căn hộ chung cư</span>. Tỉnh/Tp: <span>Tp.HCM</span>.
                Quận/Huyện: <span>Quận 1</span>. Có 890 bất động sản.</p>
        </div>
    </div>

   @foreach($data as $key=>$item)

        <div class="items-duan">
            <div class="row">

                <div class="col-md-3">
                    <a href="{{URL::to('tuyen-dung/'.$item->path)}}"><div class="img-overlay"><div class="img-duan"
                         style="background-image:url({{URL::asset($item->image)}});">
                    </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-9">
                    <div class="tt-duan ml-lg-3 m-0">
                        <h5><a href="{{URL::to('tuyen-dung/'.$item->path)}}">{{$item->title}}</a></h5>

                        {{--<div class="d-flex pb-2">--}}
                            {{--<p>Lương :--}}
                                {{--Thỏa Thuận</p>--}}
                        {{--</div>--}}

                        <div class="tintuc-sortcontent">
                            <p>
                               {!! $item->description !!}
                            </p>
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


    {{--<div class="row mb-4">--}}
        {{--<div class="col-12 text-center">--}}
            {{--<nav class="text-center" aria-label="Page navigation example" style="width: 100%;margin: auto">--}}
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