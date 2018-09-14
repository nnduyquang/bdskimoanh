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

    #r_n_s .right-nav-content ul, #r_n_s  .right-nav-quan ul {
        list-style-type: none;
    }

    #r_n_s  .right-nav-content ul li {
        position: relative;
        margin-bottom: 8px;
        padding-left: 20px;
    }

    #r_n_s  .right-nav-content ul li a {
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

        <div class="col-12 mb-4">

            <div class="right-nav-timkiem border p-3">
                <h6>
                    TÌM KIẾM BẤT ĐỘNG SẢN
                </h6>

                <div class="right-nav-quan p-2 text-center">

                    <select class="form-control" id="sel1">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option selected>Gò Vấp</option>
                    </select>

                    <select class="form-control" id="sel1">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option selected>14</option>
                    </select>

                    <select class="form-control" id="sel1">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option selected>Số 57</option>
                    </select>
                    <select class="form-control" id="sel1">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option selected>1 - 2 tỷ</option>
                    </select>

                    <select class="form-control" id="sel1">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option selected>Diện tích</option>
                    </select>

                    <select class="form-control" id="sel1">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option selected>2+</option>
                    </select>

                    <select class="form-control" id="sel1">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option selected>KXĐ</option>
                    </select>

                    <select class="form-control" id="sel1">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option selected>Dream Home</option>
                    </select>

                    <button class="mt-2">TÌM KIẾM</button>
                </div>
            </div>
        </div>

        <div class="col-12 mb-4">
            <h4>
                BẤT ĐỘNG SẢN THEO KHU VỰC
            </h4>

            <div class="right-nav-content border border-top-0 p-4">
                <ul>
                    @for ($i = 0; $i < 22; $i++)
                        <li><a href="">Quận 1 (1234)</a></li>
                    @endfor
                </ul>
            </div>
        </div>

        <div class="col-12 mb-4">
            <h4>
                QUẬN 1
            </h4>

            <div class="right-nav-quan border border-top-0 p-4">
                <ul>

                    @for ($i = 0; $i < 5; $i++)
                        <li><a href="">Chung cư tại Indochina Park Tower</a></li>
                    @endfor

                </ul>
            </div>
        </div>

        <div class="col-12 mb-4">
            <h4>
                QUẬN TÂN PHÚ
            </h4>

            <div class="right-nav-quan border border-top-0 p-4">
                <ul>

                    @for ($i = 0; $i < 6; $i++)
                        <li><a href="">Bán căn hộ chung cư tại Âu Cơ Tower</a></li>
                    @endfor

                </ul>
            </div>
        </div>

        <div class="col-12 mb-4">
            <h4>
                QUẬN 7
            </h4>

            <div class="right-nav-quan border border-top-0 p-4">
                <ul>

                    @for ($i = 0; $i < 5; $i++)
                        <li><a href="">Căn hộ chung cư tại Phường Phú Mỹ</a></li>
                    @endfor

                </ul>
            </div>
        </div>

        <div class="col-12 mb-4">
            <h4>
                BÌNH THẠNH
            </h4>

            <div class="right-nav-quan border border-top-0 p-4">
                <ul>

                    @for ($i = 0; $i < 8; $i++)
                        <li><a href="">Bán căn hộ chung cư tại Chung cư Mỹ Đức 123123</a></li>
                    @endfor

                </ul>
            </div>
        </div>


        <div class="col-12 mb-4">
            <h4>
                LIÊN KẾT
            </h4>

            <div class="right-nav-quan border border-top-0 p-4">
                <ul>

                    @for ($i = 0; $i < 10; $i++)
                        <li><a href="">Cho thuê phòng trọ Quận 7</a></li>
                    @endfor

                </ul>
            </div>
        </div>
    </div>
</div>
