namespace :my_namespace do
  desc "TODO"
  task :my_task1 => :environment do
   # sh "npduy"
   puts "Inside task now #{Time.now}"
  end
end
