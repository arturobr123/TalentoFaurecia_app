$("#data").html("<%= j render @usuarios %>")
$("#how_many_usuarios").html("<%= @how_many_usuarios %>")

$(".preloader-wrapper").removeClass("active")
$(".preloaderDiv").css("display": "none")
$("#pagination").html("<%= j will_paginate @usuarios ,:remote =>true %>")
$('.pagination a').attr('data-remote', 'true')
