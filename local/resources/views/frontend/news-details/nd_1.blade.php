
<div id="pd_4">

    <h6>VỊ TRÍ LIÊN QUAN</h6>

    @for ($i = 0; $i < 5; $i++)

        <div class="items-duan">
            <div class="row">

                <div class="col-md-3">
                    <div class="img-duan"
                         style="background-image:url({{URL::asset('images/duan/20170316163647-bb85.jpg')}});">
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="tt-duan">
                        <h5><a href="{{URL::asset('/duan-chitiet.html')}}">Tuyển dụng vị trí nhân viên kinh doanh
                            Bất Động Sản</a></h5>

                        <div class="d-flex pb-2">
                            <p>Lương :
                            Thỏa Thuận</p>
                        </div>

                        <div class="d-flex">
                            <p class="p-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi asperiores eligendi eos itaque maiores nesciunt, provident ratione sunt vitae. Aperiam autem blanditiis dicta dignissimos excepturi placeat quaerat quis recusandae sapiente!
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

</div>