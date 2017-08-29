class UsuariosController < ApplicationController
	before_action :set_user ,except: [:index]
	#before_action :authenticate_user!,only: [:update] #gema devise
	#before_action :authenticate_owner!,only: [:update] #solo aunteticar si es el perfil del current user

	def index
		#status de los estudiantes
		# 1 = Disponible
		# 2 = En proceso 
		# 3 = Contratado
		# 4 = Rechazado
		@usuarios = User.where(status: 1).paginate(page:params[:page], per_page:15)
		@how_many_usuarios = @usuarios.count 
		
	end
	
	def show
		if(@user.university.nil? or @user.carrer.nil? or @user.interest_area1.nil? or @user.interest_area2.nil? or @user.interest_area1.nil?)
			redirect_to root_path ,notice:"El usuario no ha completado su informacion"
		end
			
	end


	def edit
		@Sexos = ["Femenino" , "Masculino" , "No quiero responder"]
	end

	def update
		
		respond_to do |format|
			if @user.update(user_params)
				format.html {redirect_to @user}
				format.js
				format.json { render :show}
			else
				format.html {redirect_to @user, notice:"Error al actualizar"}
				format.json { render json: @user.errors }
			end
		end
	end

	private
	  def set_user
		@user = User.find(params[:id])
	  end

	  def authenticate_owner!
	  	if current_user != @user
	  		redirect_to root_path, notice: "No estas autorizado", status: :unauthorized
	  		
	  	end
	  	
	  end


	  def user_params
	  	params.require(:user).permit(:email,:name, :firs_last_name, :second_last_name, :phone, :carrer , :semester , :graduation_year , :CV , :sexo , :disponible_en , :university, :duration_internship , :level_english , :interest_area1 , :interest_area2 , :interest_area3 , :estado_residencia ,:birthdate , :status)
	  	
	  end

end