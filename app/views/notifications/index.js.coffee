$(".preloader_notifications").removeClass("active")
$(".preloaderDivNotifications").css("display": "none")


$("#notifications").html("<%= j render_notifications(@notifications) %>")
console.log("index.js.coffee de index controller Notifications")