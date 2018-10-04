<style>
    #r_n_s .right-nav-timkiem {
        border-radius: 5px;
        background-color: #fdfcff;
    }

    #r_n_s h4 {
        font-size: 14px;
        color: white;
        background-color: #f68121;
        padding: 10px 0px 8px 0px;
        text-align: center;
        /*font-weight: 600;*/
        border-radius: 4px 4px 0px 0px;
        margin-bottom: 20px;
        /*font-weight: bold;*/
    }

    #r_n_s .right-nav-timkiem h6 {
        font-size: 14px;
        color: #144381;
        /*background-color: #f68121;*/
        padding: 10px 0px 8px 0px;
        text-align: center;
        /*font-weight: 600;*/
        border-radius: 4px 4px 0px 0px;
        margin-bottom: 20px;
        font-weight: bold;
    }

    #r_n_s .right-nav-timkiem select {
        margin-bottom: 10px;
    }

    #r_n_s .right-nav-timkiem button {
        margin: auto;
        font-size: 14px;
        padding: 8px 16px;
        border-radius: 5px;
        border: none;
        cursor: pointer;
        background-color: #144381;
        color: white;
    }

    #r_n_s .right-nav-content, #r_n_s .right-nav-quan {
        margin-top: -20px;
        background-color: #fdfcff;
    }

    #r_n_s .right-nav-content ul, #r_n_s .right-nav-quan ul {
        list-style-type: none;
    }

    #r_n_s .right-nav-content ul li {
        position: relative;
        margin-bottom: 8px;
        padding-left: 20px;
    }

    #r_n_s .right-nav-content ul li a {
        color: #1f648b;
        transition: .3s;
    }

    #r_n_s .right-nav-content ul li a:hover {
        color: #f68121;
    }

    #r_n_s .right-nav-content ul li:before {
        content: '\f111';
        font-family: 'Font Awesome\ 5 Free';
        font-weight: 900;
        position: absolute;
        top: 50%;
        left: 0px;
        color: #144381;
        transform: translateY(-50%);
        font-size: 6px;
        font-style: normal;
    }

    #r_n_s .right-nav-quan ul li {
        margin-bottom: 8px;
        /*padding-left: 20px;*/
        text-overflow: ellipsis;
        overflow: hidden;
        width: 100%;
        height: 1.2em;
        white-space: nowrap;
    }

    #r_n_s .right-nav-quan ul li a {
        color: #1f648b;
        transition: .3s;
    }

    #r_n_s .right-nav-quan ul li a:hover {
        color: #f68121;
        padding-left: 3px;
    }

</style>


<div id="r_n_s">
    <div class="row">

        <div class="col-12 mb-4 p-lg-1 p-0">

            <div class="right-nav-timkiem border p-3">
                <h6>
                    TÌM KIẾM BẤT ĐỘNG SẢN
                </h6>

                <div class="right-nav-quan p-2 text-center">
                    {!! Form::open(array('route' => 'frontend.search','method'=>'POST','name'=>'search-home')) !!}
                    <select class="form-control" name="select-city">
                        <option value="-1">Chọn Tỉnh/Thành Phố</option>
                        @foreach($listFrontEndInfo['cities'] as $key=>$item)
                            <option value="{{$item->id}}">{{$item->name}}</option>
                        @endforeach
                    </select>

                    <select class="form-control" name="select-district">
                        <option value="-1" selected>Chọn Quận/Huyện</option>
                    </select>

                    <select class="form-control" name="select-ward">
                        <option value="-1" selected>Chọn Phường/Xã</option>
                    </select>
                    <select class="form-control" name="select-area">
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

                    <select class="form-control" name="select-price">
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

                    <select class="form-control" name="select-num-bed">
                        <option value="-1" selected>Số phòng ngủ</option>
                        <option value="0">Không Xác Định</option>
                        <option value="1">1+</option>
                        <option value="2">2+</option>
                        <option value="3">3+</option>
                        <option value="4">4+</option>
                        <option value="5">5+</option>
                    </select>


                    <select class="form-control" name="select-direction">
                        <option value="-1" selected>Hướng nhà</option>
                        @foreach($listFrontEndInfo['directions'] as $key=>$item)
                            <option value="{{$item->id}}">{{$item->name}}</option>
                        @endforeach
                    </select>

                    <select class="form-control" id="sel1">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option selected>Dream Home</option>
                    </select>

                    <button type="submit" class="btn-timkiem mt-2">Tìm kiếm</button>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>

        @include('frontend.common.menu-r.mnr_1')
        @include('frontend.common.menu-r.mnr_2')

    </div>
</div>
