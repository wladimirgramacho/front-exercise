// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
document.addEventListener("turbolinks:load", function() { 
	var price;
  var quantity = $("#transaction-quantity").val(); 

  $("#coin-value").change( function() { 
  	price = $("#coin-value option:selected").attr("data-value");
  	$("#coin-price").text(price);
  });

  $("#transaction-quantity").on("input", function() {

  	console.log(quantity*price);
  	$("#transaction-value").text(quantity*price);
  });

});