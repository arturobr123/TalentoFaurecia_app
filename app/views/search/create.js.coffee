$("#data").html("<%= j render @vacantes %>")
$(".preloader-wrapper").removeClass("active")
$(".preloaderDiv").css("display": "none")
$("#pagination").html("<%= j will_paginate @vacantes ,:remote =>true %>")
$('.pagination a').attr('data-remote', 'true')