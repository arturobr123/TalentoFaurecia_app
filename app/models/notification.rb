class Notification < ApplicationRecord
  belongs_to :admin
  belongs_to :item, polymorphic: true
  after_create {NotificationBroadcastJob.perform_later(self)}
  scope :unviewed, -> {where(viewed:false)}
  scope :latest, -> {order("created_at desc").limit(10)}


  def self.for_admin(admin_id)
  	Notification.where(admin_id: admin_id).unviewed.count

  end


  def check_date_users_notifacate
  	@vacantes_aplicadas = VacanteAplicada.where(status: 3)
  	@vacantes_aplicadas.each do |vacante_aplicada|
  		if(  (DateTime.now - vacante_aplicada.updated_at.to_datetime).to_i  == 120)
  			Notification.create(item: vacante_aplicada, admin_id: item.cualAdmin) 
  		end
  		
  	end
  	
  end
  
end
