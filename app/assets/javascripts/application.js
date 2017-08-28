//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

$('.leaf').click(function() {
  $('#title').addClass("expandOpen");
});

$('.skill-badge').click(function() {
  alert('coché');
  $(this).children('.badge-content').addClass("checked");
});

