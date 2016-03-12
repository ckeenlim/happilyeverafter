$(function() {
$("#todo-panel-option").click(function(){
    $("#all-items").show();
    $("#completed-items-panel").hide();
});

$("#completed-todo-panel-option").click(function(){
    $("#all-items").hide();
    $("#completed-items-panel").show();
});

	$(".completed-todo-item").css("text-decoration", "line-through");

})