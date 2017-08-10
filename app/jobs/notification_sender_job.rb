class NotificationSenderJob < ApplicationJob
  queue_as :default

  def perform(item)

  	Notification.create(item: item, admin_id: item.cualAdmin)
    # Do something later
  end
end
