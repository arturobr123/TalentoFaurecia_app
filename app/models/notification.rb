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
  	@usuarios = User.where(status: 1)
  	@usuarios.each do |usuario|
  		if(  (DateTime.now - usuario.created_at.to_datetime).to_i  > 0)
  			puts "#{usuario.name}  ya van a acabar sus practicas"
  			Notification.create(item: usuario, admin_id: usuario.id) 
  		end
  		
  	end
  	
  end
  
end
