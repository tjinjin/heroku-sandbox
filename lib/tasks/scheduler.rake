desc "This task is called by the Heroku scheduler add-on"
task :update_feed => :enviroment do
  puts "Updating feed..."
  NewsFeed.update
  puts "done."
end

task :send_reminders => :enviroment do
  User.send_reminders
end
