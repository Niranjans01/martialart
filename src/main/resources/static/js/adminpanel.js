
$(document).ready(function () {
    $(".article").hide();
    $(".story").hide();

    $(".articletab").click(function () {
        $(".article").css("margin-right","25%").show();
        $(".story").hide();
    });

    $(".storytab").click(function () {
        $(".story").css("margin-right","25%").show();
        $(".article").hide();
    });


});

