module ApplicationHelper


	def resource
		@resource ||= User.new
	end

	def resource_name
		:user
	end

	def resource_class
		User
	end




	def resourceAdmin
		@resourceAdmin ||= Admin.new
	end

	def resourceAdmin_name
		:admin
	end

	def resourceAdmin_class
		Admin
	end




end
