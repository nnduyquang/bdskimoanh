var plugins = {
    menuSideBar: $('.sidebar'),
    slider: $('#slider'),
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