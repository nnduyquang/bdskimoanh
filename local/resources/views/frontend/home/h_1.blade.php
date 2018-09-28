<style>
</style>
<div id="h_1" class="mt-1">
    <h4>
        TẤT CẢ BẤT ĐỘNG SẢN
    </h4>
    @foreach($data['products'] as $key=>$item)
        <div class="items-duan">
            <div class="row">
                <div class="col-md-3">
                    <a href="{{URL::to('/du-an/'.$item->path)}}">
                        <div class="img-overlay">
                            <div class="img-duan"
                                 style="background-image:url({{URL::asset($item->image)}});">
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-9">
                    <div class="tt-duan ml-lg-3 m-0">
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
                            <p class="tt-ngaydangtin pb-2">
                                <a href="">Ngày đăng tin: {{$item->created_at}}</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endforeach
</div>
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