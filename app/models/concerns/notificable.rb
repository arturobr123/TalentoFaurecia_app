module Notificable
	extend ActiveSupport::Concern

	included do
	  has_many :notifications, as: :item
	  after_update_commit :send_notification_admin_finish_internship
	  after_create_commit :send_notification_admin
	end

	def send_notification_admin
		if self.statusDisponible?
			#JOB => mandar notificaciones asyncronas
			puts "send_notification_admin___Notificable"
			#NotificationSenderJob.set(wait: 1.minutes).perform_later(self)
			NotificationSenderJob.perform_later(self)
			
		end
	end


	def send_notification_admin_finish_internship
		if self.statusContratado?
			#JOB => mandar notificaciones asyncronas
			puts "send_notification_admin_finish_internship___Notificable"
			NotificationSenderJob.set(wait: 4.months).perform_later(self)
			#NotificationSenderJob.perform_later(self)
			
		end
	end
	
end