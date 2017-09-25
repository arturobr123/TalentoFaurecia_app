class EvaluationHiringManager < ApplicationRecord
	after_create_commit :send_notification_admin_evaluation_hiring_manager

	def send_notification_admin_evaluation_hiring_manager
		NotificationSenderJob.perform_later(self)
	end


	def cualAdmin
		return self.admin.id
	end


end
