class MainController < ApplicationController
	
  def home

    @vacantes = Vacante.all.nuevos.no_occupied.paginate(page:params[:page], per_page:15)
    #if current_user.phone.blank? or current_user.sexo.blank? or current_user.CV.blank?
    #  redirect_to edit_user_path(current_user)
    #end    
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
