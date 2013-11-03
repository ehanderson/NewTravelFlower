$(document).ready(function(){
  $('.formList').hide();
   $('#button_id').click(function() {
    $('.answers_show').hide();
    $('.formList').toggle();
    $('#tag_form').hide();
      $("#tags").click(function() {
        $('#tag_form').toggle();
      })

});
 });




