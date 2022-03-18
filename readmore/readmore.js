$(".deletebutton").click(function(){
  var idstring = $(this).attr("id");
  if(confirm(idstring)){
    deleteData(idstring);
  }
});

$(document).ready(function(){
  var start = 0;
  var limit = 5;
  var reachedMax = false;

  function getData(){
    if(reachedMax){
      return;
    }
    $.ajax({
      url:"readmoreserver.php",
      method:"POST",
      dataType:"text",
      data:{
        getData: 1,
        start: start,
        limit: 5
      },
      success:function(response){
        if (response == "reachedMax"){
            reachedMax = true;
        }
        else {
            start += limit;
            $("#article").append(response);
        }
      }
      }
    );


    // $(".deletebutton").click(function(){
    //   var idstring = $(this).attr("id");
    //   if(confirm(idstring)){
    //     deleteData(idstring);
    //   }
    // });
  }
  getData();


  $(window).scroll(function() {
    if($(window).scrollTop() >= $(document).height() - $(window).height()-50) {
           // ajax call get data from server and append to the div
           getData();


    }
  });

  function deleteData(idstring){
    // if(reachedMax){
    //   return;
    // }
    $.ajax({
      url:"deleteserver.php",
      method:"POST",
      dataType:"text",
      data:{
        delete: 1,
        id:idstring
        // start: start,
        // limit: 5
      },
      success:function(response){
        if (response == "reachedMax"){
            reachedMax = true;
        }
        else {
            start += limit;
            $("#article").append(response);
            // window.location.href=window.location.href;

        }
      }
      }
    );
    // location.reload(ture);
  }

  $("#article").delegate(".deletebutton", "click", function(){

      var idstring = $(this).attr("id");
      var boolstore = confirm(idstring);
      if(boolstore){
        deleteData(idstring);
        location.reload();
      }
  });




});
