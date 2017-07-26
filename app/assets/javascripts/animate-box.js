$(window).scroll(function (){
$(' .mov').each(function (){
    var imagePos = $(this).offset().top;
    var topOfWindow = $(window).scrollTop();

    $(this).addClass('fadeInDown');

    });
});
