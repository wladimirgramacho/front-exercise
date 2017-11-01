// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
document.addEventListener("turbolinks:load", function() { 
	var price;
  var quantity;


  $("#coin-value").change( function() { 
  	price = $("#coin-value option:selected").attr("data-value");
  	$("#coin-price").text(price);
  });

  $("#transaction-quantity").on("input", function() {
  	quantity = $("#transaction-quantity").val();
  	var value = quantity*price;

  	console.log(value);
  	if (isNaN(value)) {
  		$("#transaction-value").text('');
  	}
  	else {
  		$("#transaction-value").text(value);
  	}

  });

  function disableSubmit(){
  	var selectedOption = $("#coin-value option:selected").val();
  	var quantityInserted = $("#transaction-quantity").val();

  	if (selectedOption && quantityInserted)
  		$("#submit-form").disabled = false;
  	else {
  		$("#submit-form").disabled = true;
  	}
  }

  $("#coin-value").change( disableSubmit ); 
  $("#transaction-quantity").change( disableSubmit ); 

});