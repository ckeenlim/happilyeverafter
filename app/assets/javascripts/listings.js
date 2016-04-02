/**
 * @author karl.chan
 */
// This can be either list or grid
var LISTING_DISPLAY_TYPE = "grid-group-item";

$(document).ready(function() {
    
    // default filter panel heading to collapsed
    $(".panel-heading").addClass("collapsed");
    
    // register the onclicks of list button
    $('#list').click(function(event){
        event.preventDefault();
        $('#vendors .item').addClass('list-group-item');
        LISTING_DISPLAY_TYPE = "list-group-item";
    });

    // register the onclicks of grid button    
    $('#grid').click(function(event){
        event.preventDefault();
        $('#vendors .item').removeClass('list-group-item');
        $('#vendors .item').addClass('grid-group-item');
        LISTING_DISPLAY_TYPE = "grid-group-item";
    });
    
    // reset view with default listing display type
    $('#vendors .item').removeClass('list-group-item');
    $('#vendors .item').addClass('grid-group-item');
    $('#vendors .item').addClass(LISTING_DISPLAY_TYPE);
    
    // register the on click of all categories checkbox
    $("#allCategories").change(function(){
      $(".categoryCheckbox").prop('checked', $(this).prop("checked"));
    });
    
    /// register the pagination links to save the last display type selected
    $('.pagination a').click(function(event){
        if ($('#vendors .item').hasClass("list-group-item")) {
            LISTING_DISPLAY_TYPE = "list-group-item";
        } else {
            LISTING_DISPLAY_TYPE = "grid-group-item";
        }
    });
    
    // register the on click of all locations checkbox  
    $("#allLocations").change(function(){
      $(".locationCheckbox").prop('checked', $(this).prop("checked"));
    });
});
