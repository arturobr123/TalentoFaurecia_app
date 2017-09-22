desc " Heroku scheduler TASKS"

task :check_dates_notifitcations => :environment do
  Notification.new.check_date_users_notifacate
end


task :check_users_and_delete_emptys => :environment do
  @usuarios = User.all

  @usuarios.each do |usuario|
  	if(usuario.university.nil? and usuario.carrer.nil?)

  		@answer_questions = AnswerQuestion.where(user_id: usuario.id)

  		if(@answer_questions)
      		@answer_questions.destroy_all 
    	end

  		usuario.destroy
  	end

  end

end
