class AdministradoresController < ApplicationController
	before_action :set_admin ,except: [:index]
	#before_action :authenticate_user!,only: [:update] #gema devise
	#before_action :authenticate_owner!,only: [:update] #solo aunteticar si es el perfil del current user

	def index
		
	end
	
	def show

	end


	def edit

	end

	def update
		Notification.create(item: @admin, admin_id: 1)
		respond_to do |format|
			if @admin.update(admin_params)
				format.html {redirect_to root_path}
				format.js
				format.json { render :show}
			else
				format.html {redirect_to @user, notice:"Error al actualizar"}
				format.json { render json: @user.errors }
			end
		end
	end

	private
	  def set_admin
		@admin = Admin.find(params[:id])
	  end


	  def admin_params
	  	params.require(:admin).permit(:email,:name)
	  	
	  end

end