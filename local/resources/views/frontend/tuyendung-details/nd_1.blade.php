<div id="pd_4">

    <h6>VỊ TRÍ LIÊN QUAN</h6>

    @foreach($other as $key=>$item)

        <div class="items-duan">
            <div class="row">

                <div class="col-md-3">
                    <a href="{{URL::to('/tuyen-dung/'.$item->path)}}">
                        <div class="img-duan"
                             style="background-image:url({{URL::asset($item->image)}});">
                        </div>
                    </a>
                </div>
                <div class="col-md-9">
                    <div class="tt-duan">
                        <h5><a href="{{URL::to('/tuyen-dung/'.$item->path)}}">{{$item->title}}</a></h5>

                        {{--<div class="d-flex pb-2">--}}
                            {{--<p>Lương :--}}
                                {{--Thỏa Thuận</p>--}}
                        {{--</div>--}}

                        <div class="d-flex">
                            <p class="p-content">{!! $item->description !!}
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

</div>