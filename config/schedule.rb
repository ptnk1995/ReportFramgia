env :PATH, ENV['PATH']
set :environment, "development"
set :output, {:error => "log/cron_error_log.log", :standard => "log/cron_log.log"}
# every 1.minutes do
#   rake "my_namespace:my_task1"
# end


#whenever --update-crontab
#crontab -l
