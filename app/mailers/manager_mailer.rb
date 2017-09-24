class ManagerMailer < ApplicationMailer

default from: 'talentofaureciaApp@faurecia.com'


  def notify(user, email_hiring_manager)
  	@user = user
    mail(to: email_hiring_manager ,subject: "Evaluación Hiring Manager")
  end

  #ManagerMailer.notify.deliver


end
