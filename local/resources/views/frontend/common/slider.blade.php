<style>
    .bg-slider {
        width: 100%;
        background-image: url({{URL::asset('images/slider/silde-phuoc-tan.jpg')}});
        background-position: center center;
        -webkit-background-size: cover;
        background-size: cover;
        background-repeat: no-repeat;
        text-align: center;
        padding-top: 120px;
        padding-bottom: 306px;
        margin-top: 10px;

    }

    #search_box {
        width: 90%;
        height: auto;
        margin: auto;
        background-color: rgba(255, 255, 255, 0.3);
    }

    #search_box p {
        /*font-family: 'Kanit', sans-serif;*/
        /*font-weight: 600;*/
    }

    #search_box select {
        width: 90%;
        margin: auto;
        padding: 5px 15px;
        font-size: 14px;
        margin-bottom: 10px;
    }

    #search_box select option {

    }

    #search_box .btn-timkiem {
        margin-left: 5%;
        padding: 9px 15px;
        border-radius: 3px;
        background-color: #f68121;
        border: none;
        color: white;
        cursor: pointer;
        transition: .3s;
        font-size: 14px;
    }

    #search_box .btn-timkiem a {
        color: white;
    }

    #search_box .btn-timkiem:hover {
        background-color: #144381;
    }

</style>


<div class="bg-slider container-fluid d-lg-block d-md-block d-none">
    <div class="container">

        <div id="search_box">
            <div class="row">
                <div class="col-md-12">
                    <p class="text-white pt-2 pb-2" style="background-color:rgba(246,129,33,0.8);">TÌM KIẾM BẤT ĐỘNG
                        SẢN</p>
                </div>
                {!! Form::open(array('route' => 'frontend.search','method'=>'POST','name'=>'search-home')) !!}
                <div class="col-md-12">
                    <div class="row pt-4 pb-4">
                        <div class="col-md-4">
                            <select name="select-city">
                                <option value="-1">Chọn Tỉnh/Thành Phố</option>
                                @foreach($data['cities'] as $key=>$item)
                                    <option value="{{$item->id}}">{{$item->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-md-4">
                            <select name="select-district">
                                <option value="-1" selected>Chọn Quận/Huyện</option>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <select name="select-ward">
                                <option value="-1" selected>Chọn Phường/Xã</option>
                            </select>
                        </div>

                        <div class="col-md-4">
                            <select name="select-area">
                                <option value="-1" selected>Diện tích</option>
                                <option value="0">Không Xác Định</option>
                                <option value="0-30"><= 30 m2</option>
                                <option value="30-50">30 - 50 m2</option>
                                <option value="50-80">50 - 80 m2</option>
                                <option value="80-100">80 - 100 m2</option>
                                <option value="100-150">100 - 150 m2</option>
                                <option value="150-200">150 - 200 m2</option>
                                <option value="200-250">200 - 250 m2</option>
                                <option value="250-300">250 - 300 m2</option>
                                <option value="300-500">300 - 500 m2</option>
                                <option value="500">>= 500 m2</option>

                            </select>
                        </div>
                        <div class="col-md-4">
                            <select name="select-price">
                                <option value="-1" selected>Mức giá</option>
                                <option value="0">Thỏa Thuận</option>
                                <option value="0-500">< 500 triệu</option>
                                <option value="500-800">500 - 800 triệu</option>
                                <option value="800-1000">800 - 1 tỷ</option>
                                <option value="1000-2000">1 - 2 tỷ</option>
                                <option value="2000-3000">2 - 3 tỷ</option>
                                <option value="3000-5000">3 - 5 tỷ</option>
                                <option value="5000-7000">5 - 7 tỷ</option>
                                <option value="7000-10000">7 - 10 tỷ</option>
                                <option value="10000-20000">10 - 20 tỷ</option>
                                <option value="20000-30000">20 - 30 tỷ</option>
                                <option value="30000">> 30 tỷ</option>

                            </select>
                        </div>
                        <div class="col-md-4">
                            <select name="select-num-bed">
                                <option value="-1" selected>Số phòng ngủ</option>
                                <option value="0">Không Xác Định</option>
                                <option value="1">1+</option>
                                <option value="2">2+</option>
                                <option value="3">3+</option>
                                <option value="4">4+</option>
                                <option value="5">5+</option>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <select name="select-direction">
                                <option value="-1" selected>Hướng nhà</option>
                                @foreach($data['directions'] as $key=>$item)
                                    <option value="{{$item->id}}">{{$item->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-md-4">
                            <select name="select-project">
                                <option value="-1" selected>Dự án</option>
                                @foreach($data['products'] as $key=>$item)
                                    <option value="{{$item->id}}">{{$item->name}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="col-md-4 text-left">
                            <button type="submit" class="btn-timkiem">Tìm kiếm</button>
                        </div>


                    </div>
                </div>
                {!! Form::close() !!}
            </div>
        </div>

    </div>
</div>


