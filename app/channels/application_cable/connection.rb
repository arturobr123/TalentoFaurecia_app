module ApplicationCable
  class Connection < ActionCable::Connection::Base
  	identified_by :current_admin

  	def connect
  		self.current_admin = find_admin
  		puts "connect de connection"
      logger.add_tags 'ActionCable', current_admin.email
  		
  	end

  	def find_admin

      if verified_admin = env['warden'].admin
        verified_admin
      else
        reject_unauthorized_connection
      end

  		#admin_id = cookies.signed["admin.id"]
      #puts "FIND ADMIN!!"
  		#current_admin = Admin.find_by(id: admin_id)

  		#if current_admin
  		#	current_admin
  		#else
  		#	reject_unauthorized_connection
  			
  		#end


  		
  	end

  	
  end


end