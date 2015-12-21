$(document).ready ->
  $('#user-nav-link').click ->
    $(this).next().slideToggle(500);

  $('#nav-bars').click ->
    $('.collapse').slideToggle(500);

  $('.dropdown-toggle').click ->
    $(this).next().slideToggle(500);

  $('.user-nav-li').click ->
    $(this).css('background', 'initial')
