class ManagerMailer < ApplicationMailer

default from: 'talentofaureciaApp@faurecia.com'

  #def notify(user)
  #  @user = user
  #  mail(to: @user.email,subject: "Notification")
  #end

  def notify
  	@user = User.first
    mail(to: "arturo.bravo.rovirosa@hotmail.com",subject: "Notification")
  end


end
