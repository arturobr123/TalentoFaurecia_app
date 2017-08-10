class NotificationsController < ApplicationController
  def index
  	@notifications = Notification.where(admin:current_admin).unviewed.latest.paginate(page:params[:page], per_page:10)
  	respond_to do |format|
  		format.html
  		format.js
  	end
  end



  def update
  	@notification = Notification.find(params[:id])
  	message = if @notification.update(notification_params)
  		"Notificacion Vista"
  	else
  		"Hubo un error"
  	end
  	redirect_back , notice = message
  	
  end


  def view_all_notifications
  	@notifications = Notification.where(admin:current_admin).unviewed

  	@notifications.each do |notification|
  		Notification.update(notification.id, :viewed => true)
  	end

  	respond_to do |format|
  		format.html { redirect_to :back, notice: 'Todas las notificaciones vistas' }
  		format.js
  	end

  	
  end



  private
  def notification_params
  	params.require(:notification).permit(:viewed)
  		
  end

end
