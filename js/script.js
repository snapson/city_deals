$(function(){
	
	//WORK WITH DROPDOWN IN HEADER
	$("#cityChoose").on("click", function(e){
		e.preventDefault();
		$("#cityChooseMenu").toggle();
	});
	$("#cityChooseMenu").on("click", ".close", function(){
		$("#cityChooseMenu").hide();
	});
	$("#cityChooseMenu").on("click", "a", function(e){
		e.preventDefault();
		if(!$(this).hasClass("disabled")){
			$("#cityChoose i").text( $(this).text() );
			$("#cityChooseMenu").hide();
		}
	});
	//END WORK WITH DROPDOWN IN HEADER
	
});