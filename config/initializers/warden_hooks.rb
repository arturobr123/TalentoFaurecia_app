#Warden

#Devise => Login y autenticación

Warden::Manager.after_authentication do |admin,auth,opts|
	puts "guardo usuario en la cookies"
	$global_id = admin.id
	auth.cookies.signed["admin.id"] = admin.id
	auth.cookies.signed["admin.expires_at"] = 30.minutes.from_now

end


Warden::Manager.before_logout do |admin,auth,opts|
	auth.cookies.signed["admin.id"] = nil
	auth.cookies.signed["admin.expires_at"] = nil

end

