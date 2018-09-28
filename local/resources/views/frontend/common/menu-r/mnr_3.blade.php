<div class="col-12 mb-4 p-lg-1 p-0">
    <h4>
        TIN TỨC LIÊN QUAN
    </h4>

    <div class="right-nav-quan border border-top-0 p-2">

        @foreach($listFrontEndInfo['posts'] as $key=>$item)
            <div class="right-nav-tintuc d-flex ">
                <a href="{{URL::to('tin-tuc/'.$item->path)}}">
                    <div class="tintuc-img mr-3"
                         style="background-image:url({{URL::asset($item->image)}});width: 108px!important;">
                        <div style="min-width: 100px"></div>
                    </div>
                </a>

                <div class="">
                    <h5 class="">
                        <a href="{{URL::to('tin-tuc/'.$item->path)}}">{{$item->title}}</a>
                    </h5>
                    <div class="tintuc-ngay"><a href="">Ngày đăng tin: {{$item->created_at}}</a></div>
                </div>
            </div>
        @endforeach

    </div>
</div>