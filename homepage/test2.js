
var skewflag = 1;

$(document).ready(function(){

  //Telescope skew
  $("div").mousemove(function(e){
    if(skewflag == 1){
      var goalX = (e.pageX - ($(".image").offset().top + $("#circle_div").width()/2))/200;
      var goaly = (e.pageY - ($(".image").offset().left + $("#circle_div").height()/2))/200;
      $(".image").css("transform", "skew("+goalX+"deg,"+goaly+"deg)");
      $(".image").css("transform", "skewZ(" + goaly+"deg");
    }
  });


  if($(window).width() <= 1199 && $(window).width() >= 900){
    $("#lastpost").css({display:"none"});
  }
  else{
    $("#lastpost").css({display:"block"});
  }




  //section1高度調整
  // var goal_section1 = $("#circle_div").height() + $("#circle_div").offset().top + 200;
  // if($(window).height() < $(".image").height()){
    $("#section1").css({height:$(window).height() + "px"})
  // }
  // else{
    // $("#section1").css({height:goal_section1 + "px"})
  // }

  //todown
  var todownX =  $(window).width()/2 - $("#todown").width()/2;
  var todownY =  $(window).height()/2 - $("#todown").width()/2;

  $("#todown").css({position:"absolute", left:todownX + "px"});



  $("#insideshadow").click(function(){
      $("#insideshadow").css({"display":"none"});
      $("#circle_div").addClass("circle_transform")
      // $("#othersection").css({display:"block"});
      skewflag = 0;//圖片不可搖晃

      //section1高度調整
      var goal_section1 = $("#circle_div").height() + $("#circle_div").offset().top + $(window).height()*0.1;
      if($(window).height() < $(".image").height()){
        $("#section1").css({height:$(window).height() + "px"})
      }
      else{
        $("#section1").css({height:goal_section1 + "px"})
      }
      $("#todown").delay(1400).fadeIn();

      $("#othersection").delay(1400).fadeIn();
      $("footer").delay(1400).fadeIn();

  });
  //點擊國家更換
  function addcadda(id, attr, city, link){
    $(id).addClass("changeimgbefore");
    $(id).delay(1250).attr("src", attr);
    $(id).addClass("changeimgafter");
    $(id+"text").text(city);
    $(id+"link").attr("href", link);
  }


  $("#been1, #been1text").click(function(){
    if($("#been1").attr("src") == ".\\homepageimg\\country1.jpeg"){
      addcadda("#been2", ".\\homepageimg\\country1city1.jpg", "London", "..\\project\\london.php");
      addcadda("#been3", ".\\homepageimg\\country1city2.jpg", "Greenwich", "..\\project\\greenwich.php");
      addcadda("#been4", ".\\homepageimg\\country1city3.jpeg", "Bath", "..\\project\\bath.php");
      addcadda("#been5", ".\\homepageimg\\back1.jpeg", "back");
      $("#been5link").removeAttr("href");




    }
  });

  $("#been2, #been2text").click(function(){
    if($("#been2").attr("src") == ".\\homepageimg\\country2.jpg"){
      addcadda("#been1", ".\\homepageimg\\country2city1.JPG", "Brandenburg", "..\\tbc\\tbc.php");
      addcadda("#been3", ".\\homepageimg\\country2city2.jpg", "Magdeburg", "..\\tbc\\tbc.php");
      addcadda("#been4", ".\\homepageimg\\country2city3.jpg", "Potsdam", "..\\tbc\\tbc.php");
      addcadda("#been5", ".\\homepageimg\\back2.jpg", "back");
      $("#been5link").removeAttr("href");



    }
  });
  $("#been3, #been3text").click(function(){
    if($("#been3").attr("src") == ".\\homepageimg\\country3.jpg"){
      addcadda("#been1", ".\\homepageimg\\country3city1.jpeg", "Central Park", "..\\project\\Central%20Park.php");
      addcadda("#been2", ".\\homepageimg\\country3city2.jpg", "Xiziwan", "..\\project\\Xiziwan.php");
      addcadda("#been4", ".\\homepageimg\\country3city3.jpeg", "Cultural Center",  "..\\project\\Cultural%20Center.php");
      addcadda("#been5", ".\\homepageimg\\back3.jpeg", "back");
      $("#been5link").removeAttr("href");



    }
  });
  $("#been4, #been4text").click(function(){
    if($("#been4").attr("src") == ".\\homepageimg\\country4.jpg"){
      addcadda("#been1", ".\\homepageimg\\country4city1.jpg", "Hokkaido", "..\\project\\hokkaido.php");
      addcadda("#been2", ".\\homepageimg\\country4city2.JPG", "Tokyo",  "..\\project\\Tokyo.php");
      addcadda("#been3", ".\\homepageimg\\country4city3.JPG", "Asakusa",  "..\\project\\Tokyo.php");
      addcadda("#been5", ".\\homepageimg\\back4.JPG", "back");
      $("#been5link").removeAttr("href");


    }
  });
  //點擊back還原
  function removetoori(id, attr, text){
    $(id).removeClass("changeimgbefore");
    $(id).removeClass("changeimgafter");
    $(id).attr("src", attr);
    $(id+"text").text(text);
    $(id+"link").removeAttr("href");
  }

  $("#been5, #been5text").parent().click(function(){
    if($("#been5").attr("src") != ".\\homepageimg\\other.jpeg"){
      removetoori("#been1", ".\\homepageimg\\country1.jpeg", "United Kingdom");
      removetoori("#been2", ".\\homepageimg\\country2.jpg", "Germany");
      removetoori("#been3", ".\\homepageimg\\country3.jpg", "Taiwan");
      removetoori("#been4", ".\\homepageimg\\country4.jpg", "Japan");
      removetoori("#been5", ".\\homepageimg\\other.jpeg", "To Be Continue");



    }
  });


});


$(window).resize(function(){
  //section1高度調整
  var goal_section1 = $("#circle_div").height() + $("#circle_div").offset().top + 200;
  if($(window).height() < $(".image").height()){
    $("#section1").css({height:$(window).height() + "px"})
  }
  else{
    $("#section1").css({height:goal_section1 + "px"})
  }



  //section1高度調整
  if(skewflag == 1){
    $("#section1").css({height:$(window).height() + "px"})
  }
  else{
    var goal_section1 = $(".image").height()*2.75;
    $("#section1").css({height:goal_section1 + "px"});

  }

  var todownX =  $(window).width()/2 - $("#todown").width()/2;
  $("#todown").css({position:"absolute", left:todownX + "px"});


  if($(window).width() <= 1199 && $(window).width() >= 900){
    $("#lastpost").css({display:"none"});
  }
  else{
    $("#lastpost").css({display:"block"});
  }

});
