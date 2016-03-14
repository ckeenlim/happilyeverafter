$(function() {
	$("#todo-panel-option").click(function(){
	    $("#all-items").show();
	    $("#completed-items-panel").hide();
	});

	$("#completed-todo-panel-option").click(function(){
	    $("#all-items").hide();
	    $("#completed-items-panel").show();
	});

	$(".checkIcon").click(function () {
    $(this).parents('li').slideUp();
	});

	$(".resetIcon").click(function () {
    $(this).parentsUntil('#completed-items').remove();
	});

	$('[data-toggle="tooltip"]').tooltip();   
})