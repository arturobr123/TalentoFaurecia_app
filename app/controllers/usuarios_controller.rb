class UsuariosController < ApplicationController
	before_action :set_user ,except: [:index , :ver_respuestas_user]
	before_action :authenticate_admin!,only: [:index] #gema devise
	#before_action :authenticate_owner!,only: [:update] #solo aunteticar si es el perfil del current user

	def index
		#status de los estudiantes
		# 1 = Disponible
		# 2 = En proceso 
		# 3 = Contratado
		# 4 = Rechazado
		@usuarios = User.nuevos.where(status: 1).where.not(university: nil).where.not(carrer: nil).paginate(page:params[:page], per_page:15)
		#@usuarios = User.nuevos.where(status: 1).paginate(page:params[:page], per_page:15)
		@how_many_usuarios = @usuarios.count 
		
	end
	
	def show
		#if(@user.university.nil? or @user.carrer.nil?)
		#	redirect_to root_path ,notice:"El usuario no ha completado su informacion"
		#end
			
	end


	def edit

		if current_user

			if current_user.game_finished == false
	      		redirect_to gameHome_path, notice: "Antes de completar tu perfil contesta 5 preguntas sobre Faurecia"
	    	end

    	end

		@Sexos = ["Femenino" , "Masculino" , "No quiero responder"]
	end


	def update
		
		respond_to do |format|
			if @user.update(user_params)
				format.html {redirect_to root_path, notice: "información guardada correctamente"} #redirect_to @user
				format.js
				format.json { render :show}
			else
				@Sexos = ["Femenino" , "Masculino" , "No quiero responder"]
				format.html { render :edit }
				format.json { render json: @user.errors }
			end
		end
	end


	#funcion para que el admin pueda ver las preguntas contestadas del estudiante
	def ver_respuestas_user

	  @answer_questions = AnswerQuestion.where(user_id: params[:userid])

	  respond_to do |format|
	      format.html
	      format.js
      end
		
	end


	def enviar_evaluation_hiring_manager
		email_hiring_manager = params[:email_hiring_manager]

		if !current_admin
			redirect_to root_path, notice: "No eres administrador"
		end

		respond_to do |format|

		  if ManagerMailer.notify(@user, email_hiring_manager , current_admin ).deliver
		      format.html {redirect_to root_path, notice: "Se envió el correo correctamente"}
		      format.js
		  else
		  	  format.html {redirect_to root_path, notice: "No se pudo enviar el correo, volver a intentar"}
		      format.js
		  end
      end

	end


	def enlazar_a_vacante
		@vacante_aplicada = VacanteAplicada.new
		
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