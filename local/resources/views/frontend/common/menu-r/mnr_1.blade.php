<div class="col-12 mb-4 p-lg-1 p-0">
    <h4>
        BẤT ĐỘNG SẢN THEO KHU VỰC
    </h4>

    <div class="right-nav-content border border-top-0 p-4">
        <ul>
            {{--<li><a href="#">Thành Phố Mới</a></li>--}}
            {{--<li><a href="#">Bến Cát</a></li>--}}
            {{--<li><a href="#">Mỹ Phước</a></li>--}}
            {{--<li><a href="#">VSIP</a></li>--}}
            {{--<li><a href="#">Tp. Thủ Dầu Một</a></li>--}}
            {{--<li><a href="#">Tân Hòa</a></li>--}}
            {{--<li><a href="#">Bửu Hòa</a></li>--}}
            {{--<li><a href="#">Nhơn Trạch</a></li>--}}
            {{--<li><a href="#">Cát Lái</a></li>--}}
            {{--<li><a href="#">Phú Mỹ</a></li>--}}
            {{--<li><a href="#">Bà Rịa</a></li>--}}
            {{--<li><a href="#">Long Thành</a></li>--}}
            {{--<li><a href="#">Dầu Dây</a></li>--}}
            {{--<li><a href="#">Trảng Bom</a></li>--}}
            {{--<li><a href="#">Hóa An</a></li>--}}
            {{--<li><a href="#">Dĩ An</a></li>--}}
            @foreach($listFrontEndInfo['area'] as $key=>$item)
                <li><a href="{{URL::to('dia-diem/'.$item->path)}}">{{$item->name}}</a></li>
            @endforeach


        </ul>
    </div>
</div>