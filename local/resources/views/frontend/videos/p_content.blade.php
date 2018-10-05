<style>
    #p_content h3 {
        color: #f68121;
        font-size: 26px;
        margin-bottom: 10px;
    }

    #p_content .line-break-lh {
        margin-top: 10px;
        background-color: #f68121;
        width: 6px;
        height: 6px;
        border-radius: 50%;
        position: relative;
        margin: auto;
        margin-bottom: 20px;
    }

    #p_content .line-break-lh:after {
        content: '';
        position: absolute;
        width: 0px;
        left: -60px;
        height: 0px;
        border-bottom: 3px solid transparent;
        border-top: 3px solid transparent;
        border-right: 50px solid #f68121; /* Tam giác phải được đổ màu */
    }

    #p_content .line-break-lh:before {
        content: '';
        position: absolute;
        width: 0px;
        height: 0px;
        right: -60px;
        border-bottom: 3px solid transparent;
        border-top: 3px solid transparent;
        border-left: 50px solid #f68121; /* Tam giác trái được đổ màu */
    }
</style>

<div class="container-fluid mt-5 mb-5" id="p_content">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h3>VIDEOS DỰ ÁN VÀ HOẠT ĐỘNG</h3>

                <div class="line-break-lh"></div>
            </div>
            <div class="col-12 text-center mb-4"><p style="font-size: 18px">
                    Videos về hoạt dộng và các dự án của Kim Oanh Group.
                </p></div>
            @if(!is_null($data->videos))
                @php

                    $listVideos=explode(';',$data->videos);

                @endphp
                @foreach($listVideos as $key2=>$item2)

                    <div class="col-md-3 text-center mb-3">
                        <div class="youtube-cover">
                            <iframe style="position: absolute;top: 0;left: 0;width: 100%;height: 100%;z-index: 1"
                                    src="{{$item2}}" frameborder="0"
                                    allow="autoplay; encrypted-media" allowfullscreen></iframe>
                            {{--<p>thông tin tiệc cưới hera</p>--}}
                        </div>
                        <div onclick="revealVideo('video','youtube','{{$item2}}')"
                             class="cover"
                             style="position: absolute;z-index: 11;width: 100%;height: 100%;top: 0;left: 0;cursor: pointer"></div>
                    </div>
                @endforeach

                    {{--<div class="col-md-3 text-center mb-3">--}}
                        {{--<div class="youtube-cover">--}}
                            {{--<iframe style="position: absolute;top: 0;left: 0;width: 100%;height: 100%;z-index: 1"--}}
                                    {{--src="https://www.youtube.com/embed/fsi1YSKYFdo" frameborder="0"--}}
                                    {{--allow="autoplay; encrypted-media" allowfullscreen></iframe>--}}
                            {{--<p>thông tin tiệc cưới hera</p>--}}
                        {{--</div>--}}
                        {{--<div onclick="revealVideo('video','youtube','https://www.youtube.com/embed/fsi1YSKYFdo')"--}}
                             {{--class="cover"--}}
                             {{--style="position: absolute;z-index: 11;width: 100%;height: 100%;top: 0;left: 0;cursor: pointer"></div>--}}
                    {{--</div>--}}

            @endif
        </div>
    </div>
</div>