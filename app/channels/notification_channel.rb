class NotificationChannel < ApplicationCable::Channel
  def subscribed
    stream_from "notifications.#{current_admin.id}"

    puts "desde subscribed de NotificationChannel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
