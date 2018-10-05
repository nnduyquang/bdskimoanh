<style>
    .lightbox {
        width: 100%;
        height: 100%;
        background-color: rgba(00,00,00,0.8);
        overflow: scroll;
        position: fixed;
        display: none;
        z-index: 110;
        bottom: 0;
        right: 0;
        left: 0;
        top: 0;
    }

    .lightbox-container {
        position: relative;
        max-width: 960px;
        margin: 7% auto;
        display: block;
        padding: 0 3%;
        height: auto;
        z-index: 10;}
    /*.lightbox-content{*/
        /*position: absolute;*/
        /*top:50%;*/
        /*transform: translateY(-50%);*/
    /*}*/

    .lightbox-close {
        text-transform: uppercase;
        background: transparent;
        position: absolute;
        font-weight: 300;
        font-size: 12px;
        display: block;
        border: none;
        color: white;
        top: -22px;
        right: 3%;
        cursor: pointer;
    }

    .video-container {
        padding-bottom: 56.25%;
        position: relative;
        padding-top: 30px;
        overflow: hidden;
        height: 0;
    }

    .video-container iframe,
    .video-container object,
    .video-container embed {
        position: absolute;
        height: 100%;
        width: 100%;
        left: 0;
        top: 0;
    }

    /* IGNORE FORM THIS POINT ON */

    .youtube-cover{
        position: relative;
        width: 100%;
        height: 0;
        padding-bottom: 56.25%;
    }


    @media screen and (max-width: 768px) {
        .lightbox-container {
            margin: 8% auto !important ;
        }
    }

    @media screen and (max-width: 415px) {
        .lightbox-container {
            margin: 53% auto!important
        }
    }


</style>
<div id="video" class="lightbox" onclick="hideVideo('video','youtube')">
    <div class="lightbox-container">
        <div class="lightbox-content">
            <button onclick="hideVideo('video','youtube')" class="lightbox-close">
                ĐÓNG | ✕
            </button>
            <div class="video-container">
                <iframe id="youtube" width="960" height="540" src=""
                        frameborder="0" allowfullscreen></iframe>
            </div>
        </div>
    </div>
</div>

