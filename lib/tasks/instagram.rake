desc "This task is called by the Heroku scheduler to pull hashtagged images"
task :update_pages => :environment do
  puts "Updating pages..."
  #User.load_pages
  puts "done."
end