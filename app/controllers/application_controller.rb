class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :set_layout
  before_action :configurar_strong_params, if: :devise_controller?

  protected
  	def set_layout
  		
	  	"application"
	  	
	 end

  def configurar_strong_params

  	devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :firs_last_name, :second_last_name])
  	
  end



end
