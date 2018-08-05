var tabs = $('.tabs');
var items = $('.tabs').find('a').length;
var selector = $(".tabs").find(".selector");
var activeItem = tabs.find('.active');
var activeWidth = activeItem.innerWidth();
$(".selector").css({
    "left": activeItem.position.left + "px",
    "width": activeWidth + "px"
});


if ($('.active').length > 0) {
    var activeWidth = $('.active').innerWidth();
    var itemPos = $('.active').position();
    $(".selector").css({
        "left": itemPos.left + "px",
        "width": activeWidth + "px"
    });
}


function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}

