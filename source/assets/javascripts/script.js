$(function(){
	
	//WORK WITH DROPDOWN IN HEADER
	$(document).click(function(){
		$("#city-choose-menu").hide();
		console.log(true);
	});
	$("#city-choose").on("click", function(e){
		e.preventDefault();
		e.stopPropagation();
		
		$("#city-choose-menu").show();
	});
	$("#city-choose-menu").on("click", "a", function(e){
		e.preventDefault();
		e.stopPropagation();
		
		if(!$(this).hasClass("disabled")){
			$("#city-choose i").text( $(this).text() );
			$("#city-choose-menu").hide();
		}
	});
	//END WORK WITH DROPDOWN IN HEADER
	
});