<style>
    #p_content h3{
        color: #f68121;
        font-size: 26px;
        margin-bottom: 10px;
    }

    #p_content .line-break-lh{
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
         width:0px;
         left: -60px;
         height:0px;
         border-bottom:3px solid transparent;
         border-top:3px solid transparent;
         border-right:50px solid #f68121; /* Tam giác phải được đổ màu */
     }

    #p_content .line-break-lh:before {
         content: '';
         position: absolute;
         width:0px;
         height:0px;
         right: -60px;
         border-bottom:3px solid transparent;
         border-top:3px solid transparent;
         border-left:50px solid #f68121; /* Tam giác trái được đổ màu */
     }
</style>

<div class="container-fluid mt-5 mb-5" id="p_content">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h3>VIDEO HOẠT ĐỘNG</h3>

                <div class="line-break-lh"></div>
            </div>
        </div>
    </div>
</div>