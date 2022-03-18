$(document).ready(function(){
  var logX = $(window).width() - 220;
  var logY =$("#menu").height();
  $("#logindiv").css({position:"fixed", left:logX + "px", top:logY + "px"});


  $("#logintext").click(function(){
    $("#logindiv").toggle();
  });


  $(window).scroll(function() {
    if($(window).scrollTop() > $("#section1").height() -10) {
           // ajax call get data from server and append to the div
           $("#menu").fadeIn();
    }
    else if($(window).scrollTop() < $("#section1").height()){
      $("#menu").fadeOut();
      $("#logindiv").fadeOut();

    }
});
});

$(window).resize(function(){
  var logX = $(window).width() - 200;
  var logY =$("#menu").height();
  $("#logindiv").css({position:"fixed", left:logX + "px", top:logY + "px"});
});
