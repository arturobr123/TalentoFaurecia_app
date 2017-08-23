desc " Heroku scheduler TASKS"

task :check_dates_notifitcations => :environment do
  Notification.new.check_date_users_notifacate
end
