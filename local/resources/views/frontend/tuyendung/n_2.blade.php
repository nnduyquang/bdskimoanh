
<div id="n_2">
    <h4>
        TUYỂN DỤNG BẤT ĐỘNG SẢN
    </h4>

    <div class="row drop-sort" data-class="">
        <div class="col-md-12">
            <p class="mb-1">Tìm kiếm theo các tiêu chí: Loại BDS: <span>Bán căn hộ chung cư</span>. Tỉnh/Tp: <span>Tp.HCM</span>.
                Quận/Huyện: <span>Quận 1</span>. Có 890 bất động sản.</p>
        </div>
    </div>

    @for ($i = 0; $i < 8; $i++)

        <div class="items-duan">
            <div class="row">

                <div class="col-md-3">
                    <a href=""><div class="img-duan"
                         style="background-image:url({{URL::asset('images/duan/20170316163647-bb85.jpg')}});">
                    </div>
                    </a>
                </div>
                <div class="col-md-9">
                    <div class="tt-duan">
                        <h5><a href="{{URL::asset('tuyen-dung-chi-tiet.html')}}">Bán gấp căn hộ Topaz city, Full nội thất,
                                55m2 giá 1,45 tỷ xem ngay,
                                liên hệ với
                                chúng tôi</a></h5>

                        <div class="d-flex pb-2">
                            <p>Lương :
                                Thỏa Thuận</p>
                        </div>

                        <div class="tintuc-sortcontent">
                            <p>
                                Lorem ipsum dolor sit amet, check 1casf consectetur adipisicing elit. Amet architecto
                                autem blanditiis consequatur debitis, delectus deleniti dicta, eius, enim facere illum
                                impedit inventore laborum odit reprehenderit rerum saepe suscipit ullam!
                            </p>
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


    <div class="row">
        <div class="col-12">
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