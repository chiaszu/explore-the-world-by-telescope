$(document).ready(function(){
  // $("footer").css({position:"absolute", top:($(window).height() - $("footer").offset().top - $("footer").height()) + "px"})
  $("footer").css({position:"absolute", top:$(window).height() - $("footer").height() + "px", right:"0px", width:$(window).width() + "px"})

});

$(window).resize(function(){
  $("footer").css({position:"absolute", top:$(window).height() - $("footer").height() + "px", right:"0px", width:$(window).width() + "px"})

})
