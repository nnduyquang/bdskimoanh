<style>
    #owl_slider {
        padding-top: 10px;
        width: 100%;
        /*height: 100vh;*/
    }

    #owl_slider .owl-items {
        /*height: 100vh;*/
        width: 100%;
        background-position: top center;
        background-repeat: no-repeat;
        -webkit-background-size: cover;
        background-size: cover;
    }

    @media only screen and (max-width: 750px) {
        /*#owl_slider {*/
            /*height: 36vh;*/
        /*}*/

        /*#owl_slider .owl-items {*/
            /*height: 36vh;*/
            /*width: 100%;*/
        /*}*/

        #owl_slider .owl-items img{
            width: 100%;
            height: auto;
        }
    }
</style>

<div class="d-none d-block d-sm-none" id="m_slider">


    <div class="slider">
        <div id="owl_slider" class="owl-carousel owl-theme">

            <div class="owl-items">
                <img src="{{URL::asset('images/slider/ms1.jpg')}}" alt="">
            </div>
            <div class="owl-items">
                <img src="{{URL::asset('images/slider/ms2.jpg')}}" alt="">
            </div>
            <div class="owl-items">
                <img src="{{URL::asset('images/slider/ms3.jpg')}}" alt="">
            </div>

        </div>
    </div>

</div>