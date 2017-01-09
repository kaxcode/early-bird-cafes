$(document).ready(function () {
    $('.img_wrapper').hover(function () {
        $(this).stop().animate({
            opacity: .5
        }, 300);
        $('.shop_basic_info', this).removeClass('hide');
    }, function () {
        $(this).stop().animate({
            opacity: 1
        }, 600);
        $('.shop_basic_info', this).addClass('hide');
    });
});
