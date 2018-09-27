
<div id="pd_1">

    <h1>{{$data->title}}</h1>

    <span class="">Ngày đăng: <a href="">{{$data->created_at}}</a></span>
    {{--<h2 class="khu-vuc mb-2">Lương: <a href="">Thỏa thuận</a></h2>--}}

    {{--<ul>--}}
        {{--<li class="d-flex">--}}
            {{--<div class="span1">Mức giá</div>--}}
            {{--<div class="span2">1.64 tỷ</div>--}}
        {{--</li>--}}
        {{--<li class="d-flex">--}}
            {{--<div class="span1">Diện tích</div>--}}
            {{--<div class="span2">Không xác định</div>--}}
        {{--</li>--}}
    {{--</ul>--}}

    <h5>Thông tin chi tiết</h5>

   {!! $data->content !!}


</div>