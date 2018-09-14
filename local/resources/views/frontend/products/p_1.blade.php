<div id="p_1">
    <h4>
        TẤT CẢ BẤT ĐỘNG SẢN
    </h4>

    <div class="row drop-sort" data-class="">
        <div class="col-md-12">
            <p class="mb-3">Tìm kiếm theo các tiêu chí: Loại BDS: <span>Bán căn hộ chung cư</span>. Tỉnh/Tp: <span>Tp.HCM</span>.
                Quận/Huyện: <span>Quận 1</span>. Có 890 bất động sản.</p>
            <select class="form-control" id="sel1">
                <option selected>Thông thường</option>
                <option>Giá thấp tới cao</option>
                <option>Giá cao tới thấp</option>
                <option>Diện tích lớn nhất</option>
                <option>Diện tích nhỏ nhất</option>
            </select>
        </div>
    </div>

    @for ($i = 0; $i < 8; $i++)

        <div class="items-duan">
            <div class="row">

                <div class="col-md-3">
                    <div class="img-duan"
                         style="background-image:url({{URL::asset('images/duan/20170316163647-bb85.jpg')}});">
                    </div>

                </div>
                <div class="col-md-9">
                    <div class="tt-duan">
                        <h5><a href="{{URL::asset('duan-chitiet.html')}}">Bán gấp căn hộ Topaz city, Full nội thất, 55m2
                                giá 1,45 tỷ xem ngay,
                                liên hệ với
                                chúng tôi</a></h5>

                        <div class="d-flex">
                            <p>Mức giá : </p>
                            <p>Thỏa Thuận</p>
                        </div>
                        <div class="d-flex">
                            <p>Diện Tích : </p>
                            <p>Chưa xác định</p>
                        </div>
                        <div class="d-flex">
                            <p>Quận/Huyện : </p>
                            <p>Quận 9, Tp.HCM</p>
                        </div>

                        <div>
                            <p class="tt-ngaydangtin border-bottom pb-2">
                                <a href="">Ngày đăng tin: 13/09/2018</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    @endfor


    <div class="row mb-3">
        <div class="col-12 d-flex justify-content-lg-start justify-content-center">
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                </ul>
            </nav>
        </div>
    </div>

</div>