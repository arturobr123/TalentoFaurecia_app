$("#data").html("<%=j render partial:'evaluations/evaluacionLista', object: @evaluations, as: 'evaluation' %>")
$(".preloader-wrapper").removeClass("active")
$(".preloaderDiv").css("display": "none")
$("#pagination").html("<%= j will_paginate @evaluations ,:remote =>true %>")
$('.pagination a').attr('data-remote', 'true')