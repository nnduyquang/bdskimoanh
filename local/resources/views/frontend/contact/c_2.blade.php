<style>

    /*#c_2{*/
        /*background-position: center center;*/
        /*-webkit-background-size: auto 100%;*/
        /*background-size: auto 100%;*/
        /*background-repeat: no-repeat;*/
    /*}*/
    /*#c_2 h4{*/
        /*font-size: 18px;*/
        /*color: #f68121;*/
        /*margin-bottom: 16px;*/
        /*margin-top: 16px;*/
    /*}*/

    /*#c_2 p{*/
        /*line-height: 23px;*/
        /*font-size: 16px;*/
        /*!*font-weight: bold;*!*/
    /*}*/

    /*#c_2 h5{*/
        /*font-size: 20px;*/
        /*color: #f68121;*/
        /*margin-bottom: 16px;*/
        /*margin-top: 16px;*/
        /*font-weight: bold;*/
    /*}*/

    /*#c_2 .line-break-lh{*/
        /*background-color: #f68121;*/
        /*width: 6px;*/
        /*height: 6px;*/
        /*border-radius: 50%;*/
        /*position: relative;*/
        /*margin: auto;*/
        /*margin-bottom: 20px;*/
    /*}*/
    /*#c_2 .line-break-lh:after {*/
        /*content: '';*/
        /*position: absolute;*/
        /*width:0px;*/
        /*left: -60px;*/
        /*height:0px;*/
        /*border-bottom:3px solid transparent;*/
        /*border-top:3px solid transparent;*/
        /*border-right:50px solid #f68121; !* Tam giác phải được đổ màu *!*/
    /*}*/
    /*!* Tạo mũi tên hướng bên phải *!*/
    /*#c_2 .line-break-lh:before {*/
        /*content: '';*/
        /*position: absolute;*/
        /*width:0px;*/
        /*height:0px;*/
        /*right: -60px;*/
        /*border-bottom:3px solid transparent;*/
        /*border-top:3px solid transparent;*/
        /*border-left:50px solid #f68121; !* Tam giác trái được đổ màu *!*/
    /*}*/

    /*#c_2 #form_lienhe{*/
    /*}*/
    /*#c_2 #form_lienhe input{*/
        /*width: 100%;*/
        /*margin-bottom: 10px;*/
        /*padding: 10px 20px;*/
        /*font-size: 15px;*/
    /*}*/

    /*#c_2 #form_lienhe textarea{*/
        /*width: 100%;*/
        /*margin-bottom: 10px;*/
        /*padding: 10px;*/
        /*font-size: 15px;*/
    /*}*/

    /*#c_2 #form_lienhe a{*/
        /*background-color: #f68121;*/
        /*padding: 10px 16px 8px 16px;*/
        /*color: white;*/
    /*}*/
</style>

<div class="container-fluid mt-5 mb-5" id="c_2" style="background-image:url({{URL::asset('images/bg/world-map-bg.jpg')}});">
    <div class="container">
        <div class="row d-flex align-items-center">
            <div class="col-md-6 pt-5 pb-5 text-center" style="">
                <img src="{{URL::asset('images/logo/logo2.jpg')}}" alt="" style="background-color:#f04208;;width: 138px;height: 138px;border-radius: 50%;padding: 6px">

                    <div class="">
                        <h4>TÊN DOANH NGHIỆP</h4>
                        <p>Công ty CP DVTM và xây dựng địa ốc KIM OANH</p>
                    </div>

                    <div class="">
                        <h4>ĐỊA CHỈ</h4>
                        <p>Lô B-13, QL13, Golden A, TX Bến Cát, tỉnh Bình Dương</p>
                    </div>

                    <div class="">
                        <h4>HOTLINE</h4>
                        <p>0917 503 788</p>
                        <p>098 2324 578</p>
                    </div>


            </div>

            <div class="col-md-6 text-center" id="form_lienhe">
                <h5>LIÊN HỆ CHÚNG TÔI</h5>
                <div class="line-break-lh"></div>
                <span>Quý khách vui lòng điền thông tin vào mẫu bên dưới và gửi những góp ý, thắc mắc cho Kim Oanh Group, chúng tôi sẽ phản hồi email của Quý khách trong thời gian sớm nhất.
                </span>

                <div class="row mt-3">
                    <div class="col-md-12">
                        <input type="text" placeholder="HỌ VÀ TÊN">
                    </div>
                    <div class="col-md-12">
                        <input type="text" placeholder="EMAIL">
                    </div>
                    <div class="col-md-12">
                        <input type="text" placeholder="SỐ ĐIỆN THOẠI">
                    </div>
                    <div class="col-md-12">
                        <input type="text" placeholder="DỰ ÁN BẠN QUAN TÂM">
                    </div>


                    <textarea class="m-3 p-3" placeholder="NỘI DUNG" name="" id="" cols="30" rows="10"></textarea>

                    <div class="col-12 mt-3">
                        <a href="">GỬI THÔNG TIN</a>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>