(function ($) {
    $(window).on('scroll', function () {
        var scroll = $(window).scrollTop();
        // if (scroll < 245) {
        if (scroll < 200) {
            $(".header-sticky").removeClass("stick-fixed");
        } else {
            $(".header-sticky").addClass("stick-fixed");
        }
    });

})