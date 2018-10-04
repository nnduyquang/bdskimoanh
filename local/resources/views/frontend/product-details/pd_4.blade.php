<style>



</style>
<div id="pd_4">

    <h6>CÁC TIN BẤT ĐỘNG SẢN KHÁCH</h6>

   @foreach($other as $key=>$item)

        <div class="items-duan">
            <div class="row">

                <div class="col-md-3">
                    <div class="img-duan"
                         style="background-image:url({{URL::asset($item->image)}});">
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="tt-duan">
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
                            <p>Quận/Huyện : </p>
                            <p>{{$item->stringLocation}}</p>
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