class Notification < ApplicationRecord
  belongs_to :admin
  belongs_to :item, polymorphic: true
  after_create {NotificationBroadcastJob.perform_later(self)}
  scope :unviewed, -> {where(viewed:false)}
  scope :latest, -> {order("created_at desc").limit(10)}


  def self.for_admin(admin_id)
  	Notification.where(admin_id: admin_id).unviewed.count

  end
  
end
