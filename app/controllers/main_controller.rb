class MainController < ApplicationController

	
  def home

    @vacantes = Vacante.all.nuevos.no_occupied.paginate(page:params[:page], per_page:15)
    #if current_user.phone.blank? or current_user.sexo.blank? or current_user.CV.blank?
    #  redirect_to edit_user_path(current_user)
    #end


    #Si es la primera vez que se registra el usuario
    if current_user.game_finished == false
      redirect_to gameHome_path, notice: "Antes de completar tu perfil y ver las vacantes contesta 5 preguntas sobre Faurecia"
    end


  end

  def unregistered
  	redirect_to new_user_registration_path
  end


  def homeAdmin
    redirect_to users_path
  end


  def adminRegister
  end

  def adminLogin
  end

end
