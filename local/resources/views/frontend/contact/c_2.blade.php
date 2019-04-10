<div class="container-fluid mt-5 mb-5" id="c_2"
     style="background-image:url({{URL::asset('images/bg/world-map-bg.jpg')}});">
    <div class="container">
        <div class="row d-flex align-items-center">
            <div class="col-md-6 pt-5 pb-5 text-center" style="">
                <img src="{{URL::asset('images/logo/logo2.jpg')}}" alt=""
                     style="background-color:#f04208;;width: 138px;height: 138px;border-radius: 50%;padding: 6px">

                <div class="">
                    <h4>TÊN DOANH NGHIỆP</h4>
                    <p>{{$listFrontEndInfo['namecompany']}}</p>
                </div>

                <div class="">
                    <h4>ĐỊA CHỈ</h4>
                    <p>{!! $listFrontEndInfo['contact'] !!}</p>
                </div>

                <div class="">
                    <h4>HOTLINE</h4>
                    <p>{{$listFrontEndInfo['phone1']}}</p>
                    <p>{{$listFrontEndInfo['phone2']}}</p>
                </div>
                @include('frontend.common.menu-r.mnr_4')


            </div>

            <div class="col-md-6 text-center" id="form_lienhe">
                <h5>LIÊN HỆ CHÚNG TÔI</h5>
                <div class="line-break-lh"></div>
                <span>Quý khách vui lòng điền thông tin vào mẫu bên dưới và gửi những góp ý, thắc mắc cho Kim Oanh Group, chúng tôi sẽ phản hồi email của Quý khách trong thời gian sớm nhất.
                </span>

                <div class="row mt-3">
                    <div class="col-md-12">
                        <div class="ip-name input-group">
                            <input class="form-control input-text" name="name" type="text" placeholder="HỌ VÀ TÊN">
                            <div class="invalid-feedback" style="font-size: 15px;font-weight:  bold;">
                                Please choose a username.
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="ip-email input-group">
                        <input class="form-control input-text" name="email" type="text" placeholder="EMAIL">
                            <div class="invalid-feedback" style="font-size: 15px;font-weight:  bold;">
                                Please choose a username.
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="ip-phone input-group">
                        <input class="form-control input-text" name="phone-contact" type="text" placeholder="SỐ ĐIỆN THOẠI">
                            <div class="invalid-feedback" style="font-size: 15px;font-weight:  bold;">
                                Please choose a username.
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <input name="project" type="text" placeholder="DỰ ÁN BẠN QUAN TÂM">
                    </div>


                    <textarea name="contentmail" class="m-3 p-3" placeholder="NỘI DUNG" name="" id="" cols="30" rows="10"></textarea>

                    <div class="col-12 mt-3">
                        <div class="button-group">
                            <button id="btnSendMail" type="button" class="btn btn-contact">GỬI THÔNG TIN<i
                                        class="fa fa-spinner fa-spin fa-3x fa-fw loadingSending" style="
    font-size: 15px;display: none"></i><i
                                        class="fa fa-check-circle successSending" aria-hidden="true"
                                        style="display: none"></i></button>
                            <span style="display: none;color:  green;font-weight:  bold;margin-top:  5px;">Chúng tôi đã nhận được mail và sẽ phản hồi quý khách trong 24h. Xin cảm ơn.</span>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>