$(function(){
	
	//WORK WITH DROPDOWN IN HEADER
	$(document).click(function(){
		$("#cityChooseMenu").hide();
		console.log(true);
	});
	$("#cityChoose").on("click", function(e){
		e.preventDefault();
		e.stopPropagation();
		
		$("#cityChooseMenu").show();
	});
	$("#cityChooseMenu").on("click", "a", function(e){
		e.preventDefault();
		e.stopPropagation();
		
		if(!$(this).hasClass("disabled")){
			$("#cityChoose i").text( $(this).text() );
			$("#cityChooseMenu").hide();
		}
	});
	//END WORK WITH DROPDOWN IN HEADER
	
});