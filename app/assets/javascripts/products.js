// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
  $(document).on("scroll",function(){
    if($(document).scrollTop()>100){
      $("header").removeClass("large").addClass("small");
      }
    else{
      $("header").removeClass("small").addClass("large");
      }
    });
