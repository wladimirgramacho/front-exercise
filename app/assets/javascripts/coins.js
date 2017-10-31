// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
document.addEventListener("turbolinks:load", function() { 
  $("#coin_id").bind("change",function() { 
    if ($(this).val() != undefined) { 
  	  $.ajax({ 
        url : "/transactions/get_price", 
        data: {'transaction': $(this).val()}, 
        dataType: "json", 
        type: "GET", 
          success : function(data) { 
            $(".display-price").html(data["coin_price"]); 
            $('.chosen-coin-price').val(data["coin_price"]).text(data["coin_price"]); 
            } 
      }) 
    } 
  }) 
})