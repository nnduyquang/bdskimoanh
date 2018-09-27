<style>

</style>
<div id="n_2">
    <h4>
        TIN TỨC BẤT ĐỘNG SẢN
    </h4>

    <div class="row drop-sort" data-class="">
        {{--<div class="col-md-12">--}}
            {{--<p class="mb-1">Tìm kiếm theo các tiêu chí: Loại BDS: <span>Bán căn hộ chung cư</span>. Tỉnh/Tp: <span>Tp.HCM</span>.--}}
                {{--Quận/Huyện: <span>Quận 1</span>. Có 890 bất động sản.</p>--}}
        {{--</div>--}}
    </div>
@foreach($data as $key=>$item)

        <div class="items-duan">
            <div class="row">
                <div class="col-md-3">
                    <div class="img-duan"
                         style="background-image:url({{URL::asset($item->image)}});">
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="tt-duan">
                        <h5><a href="{{URL::to('/tin-tuc/'.$item->path)}}">{{$item->title}}</a></h5>

                        <div class="tintuc-sortcontent">
                            <p>
                                {!! $item->description !!}
                            </p>
                        </div>

                        <div>
                            <p class="tt-ngaydangtin border-bottom pb-2">
                                <a href="">Ngày đăng tin: {{$item->created_at}}</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    @endforeach


    {{--<div class="row">--}}
        {{--<div class="col-12">--}}
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