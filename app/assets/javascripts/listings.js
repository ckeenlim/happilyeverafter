/**
 * @author karl.chan
 */

//$(function(){
//    $("#slider").slider();
//});

$(document).ready(function(){
    $(".panel-heading").addClass("collapsed");
});

$(document).ready(function() {
    $('#list').click(function(event){event.preventDefault();$('#vendors .item').addClass('list-group-item');});
    $('#grid').click(function(event){event.preventDefault();$('#vendors .item').removeClass('list-group-item');$('#vendors .item').addClass('grid-group-item');});
});