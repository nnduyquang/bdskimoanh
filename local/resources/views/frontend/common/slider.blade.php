<style>
    .bg-slider {
        width: 100%;
        background-image: url({{URL::asset('images/slider/01-38.jpg')}});
        background-position: center center;
        -webkit-background-size: cover;
        background-size: cover;
        background-repeat: no-repeat;
        text-align: center;
        padding-top: 96px;
        padding-bottom: 106px;
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

    #search_box .btn-timkiem a{
        color: white;
    }

    #search_box .btn-timkiem:hover {
        background-color: #144381;
    }

</style>


<div class="bg-slider container-fluid">
    <div class="container">

        <div id="search_box">
            <div class="row">
                <div class="col-md-12">
                    <p class="text-white pt-2 pb-2" style="background-color:rgba(246,129,33,0.8);">TÌM KIẾM BẤT ĐỘNG
                        SẢN</p>
                </div>
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
                            <select>
                                <option value="volvo">Volvo</option>
                                <option value="saab">Saab</option>
                                <option value="vw">VW</option>
                                <option value="audi" selected>Diện tích</option>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <select>
                                <option value="volvo">Volvo</option>
                                <option value="saab">Saab</option>
                                <option value="vw">VW</option>
                                <option value="audi" selected>Mức giá</option>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <select>
                                <option value="volvo">Volvo</option>
                                <option value="saab">Saab</option>
                                <option value="vw">VW</option>
                                <option value="audi" selected>Số phòng ngủ</option>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <select>
                                <option value="volvo">Volvo</option>
                                <option value="saab">Saab</option>
                                <option value="vw">VW</option>
                                <option value="audi" selected>Hướng nhà</option>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <select>
                                <option value="volvo">Volvo</option>
                                <option value="saab">Saab</option>
                                <option value="vw">VW</option>
                                <option value="audi" selected>Dự án</option>
                            </select>
                        </div>

                        <div class="col-md-4 text-left">
                            <button class="btn-timkiem"><a href="{{URL::asset('tim-kiem-du-an.html')}}">Tìm kiếm</a></button>
                        </div>


                    </div>
                </div>
            </div>
        </div>

    </div>
</div>


