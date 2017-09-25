class EvaluationHiringManager < ApplicationRecord
	after_create_commit :send_notification_admin_evaluation_hiring_manager

	belongs_to :user

	def send_notification_admin_evaluation_hiring_manager
		NotificationSenderJob.perform_later(self)
	end


	def cualAdmin
		return self.admin_id
	end


end
