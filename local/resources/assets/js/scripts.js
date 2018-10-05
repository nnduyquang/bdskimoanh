var plugins = {
    menuSideBar: $('.sidebar'),
    slider: $('#slider'),
    sendMail:$('#btnSendMail')
};
$(document).ready(function () {

    $('#owl_slider').owlCarousel({
        animateOut: 'fadeOut slow',
        animateIn: 'fadeIn slow',
        loop: true,
        margin: 10,
        nav: false,
        dots: false,
        autoplay: true,
        autoplayTimeout: 5000,
        autoplayHoverPause: true,
        responsive: {
            0: {
                items: 1,
                dots: false,
            },
            600: {
                items: 1,
                dots: false,
            },
            1000: {
                items: 1,
                dots: false,
            }
        }
    });

    function sidebar() {
        var trigger = $('#trigger,#close');
        trigger.on('click', function () {
            $(this).toggleClass('active');
            plugins.menuSideBar.toggleClass('closed');
            $('#blurrMe').toggleClass('blurred')
        })
        $('#wrap-container').on('click', function () {
            if ($('#blurrMe').hasClass('blurred')) {
                $('#blurrMe').toggleClass('blurred')
                plugins.menuSideBar.toggleClass('closed');
            }
        })
    }

    sidebar();

    function runSlider() {
        plugins.slider.nivoSlider({
            effect: 'fade',
            animSpeed: 500,
            pauseTime: 3000,
            pauseOnHover: true,
            controlNav: false,
        });
    }
    function getBaseURL() {
        var url = location.href;  // entire url including querystring - also: window.location.href;
        var baseURL = url.substring(0, url.indexOf('/', 14));
        if (baseURL.indexOf('http://localhost') != -1) {
            // Base Url for localhost
            var url = location.href;  // window.location.href;
            var pathname = location.pathname;  // window.location.pathname;
            var index1 = url.indexOf(pathname);
            var index2 = url.indexOf("/", index1 + 1);
            var baseLocalUrl = url.substr(0, index2);
            return baseLocalUrl + "/";
        }
        else {
            // Root Url for domain name
            return baseURL + "/";
        }
    }
    function runSendMail(){
        $('.loadingSending').css('display', 'inline-block');
        $('.input-text').removeClass('is-invalid');
        var data = new FormData($(this).get(0));
        data.append('phone', $("input[name='phone-contact']").val());
        data.append('name', $("input[name='name']").val());
        data.append('email', $("input[name='email']").val());
        data.append('project', $("input[name='project']").val());
        data.append('contentmail', $("textarea[name='contentmail']").val());
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $.ajax({
            type: "POST",
            url: getBaseURL() + "sendmail/send",
            dataType: 'json',
            processData: false,
            contentType: false,
            data: data,
            success: function (data) {
                if (data.success) {
                    $('.loadingSending').css('display', 'none');
                    $('.successSending').css('display', 'inline-block');
                    $('.successSending').fadeIn(500);
                    $('.button-group span').css('display', 'inline-block');
                    $('.button-group span').fadeIn(500);
                    setTimeout("$('.successSending').fadeOut(1500);", 3000);
                    setTimeout("$('.button-group span').fadeOut(1500);", 3000);
                    $("input[name='name']").val("");
                    $("input[name='email']").val("");
                    $("input[name='phone-contact']").val("");
                    $("input[name='project']").val("");
                    $("textarea[name='contentmail']").val("");
                }
                else {
                    $('.loadingSending').css('display', 'none');
                    var errors = data.validator;
                    if (errors.hasOwnProperty('email')) {
                        $('.ip-email .input-text').addClass('is-invalid');
                        $('.ip-email .invalid-feedback').html(errors['email']);
                    }
                    if (errors.hasOwnProperty('name')) {
                        $('.ip-name .input-text').addClass('is-invalid');
                        $('.ip-name .invalid-feedback').html(errors['name']);
                    }
                    if (errors.hasOwnProperty('phone')) {
                        $('.ip-phone .input-text').addClass('is-invalid');
                        $('.ip-phone .invalid-feedback').html(errors['phone']);
                    }
                }
            }
        });
    }
    if (plugins.sendMail.length) {
        plugins.sendMail.click(function () {
            runSendMail();
        });
    }

    if (plugins.slider.length) {
        runSlider();
    }
    $('select[name=select-city]').change(function () {
        var id = $(this).val();
        var data = new FormData($(this).get(0));
        data.append('id', id);
        var option = '<option value=\'-1\'>Chọn Phường/Xã</option>';
        $('select[name=select-ward]').html(option);
        $.ajax({
            type: "POST",
            url: getBaseURL() + "getAllDistrictsByCity",
            dataType: 'json',
            processData: false,
            contentType: false,
            data: data,
            success: function (data) {
                if (data.success) {
                    var option = '<option value=\'-1\'>Chọn Quận/Huyện</option>';
                    data.districts.forEach(function (item) {
                        option += "<option value='" + item['id'] + "'>" + item['name'] + "</option>"
                    });
                    $('select[name=select-district]').html(option);
                }
                else {
                    alert('no')
                }
            }
        });
    });
    $('select[name=select-district]').change(function () {
        var id = $(this).val();
        var data = new FormData($(this).get(0));
        data.append('id', id);
        $.ajax({
            type: "POST",
            url: getBaseURL() + "getAllWardsByDistrict",
            dataType: 'json',
            processData: false,
            contentType: false,
            data: data,
            success: function (data) {
                if (data.success) {
                    var option = '<option value=\'-1\'>Chọn Phường/Xã</option>';
                    data.wards.forEach(function (item) {
                        option += "<option value='" + item['id'] + "'>" + item['name'] + "</option>"
                    });
                    $('select[name=select-ward]').html(option);
                }
                else {
                    alert('no')
                }
            }
        });
    });
    $('form[name=search-home]').submit(function (e) {
        var city = $('select[name=select-city]').val();
        var district = $('select[name=select-district]').val();
        var ward = $('select[name=select-ward]').val();
        var area = $('select[name=select-area]').val();
        var price = $('select[name=select-price]').val();
        var bed = $('select[name=select-num-bed]').val();
        var direction = $('select[name=select-direction]').val();
        var project = $('select[name=select-project]').val();
        if (city == '-1' && district == '-1' && ward == '-1' && area == '-1' && price == '-1' && bed == '-1' && direction == '-1' && project == '-1') {
            e.preventDefault();
        }
    });
});