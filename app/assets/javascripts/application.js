//= require jquery
//= require jquery_ujs
//= require_tree .


$(document).ready(function() {

  var clickOnPopupLink = function(){
    $('body').on('click', '.static-popup-link', function(){
      $('#myModal').modal('show');
    });
  }

  clickOnPopupLink();

});