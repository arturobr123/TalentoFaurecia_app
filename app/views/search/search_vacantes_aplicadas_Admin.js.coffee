$("#data").html("<%=j render partial:'vacante_aplicadas/vacantesAplicadasLista', object: @vacante_aplicadas, as: 'vacante_aplicada' %>")
$(".preloader-wrapper").removeClass("active")
$(".preloaderDiv").css("display": "none")
$("#pagination").html("<%= j will_paginate @vacante_aplicadas ,:remote =>true %>")
$('.pagination a').attr('data-remote', 'true')