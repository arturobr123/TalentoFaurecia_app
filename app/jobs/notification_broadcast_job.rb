class NotificationBroadcastJob < ApplicationJob
  queue_as :default

  def perform(notification)
  	puts "perform NotificationBroadcastJob"
  	notification_count = Notification.for_admin(notification.admin_id)
    ActionCable.server.broadcast "notifications.#{notification.admin_id}",
    							  {action: "new_notification", message: notification_count}
  end


 
end
