# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks


# Call "rake server" instead of "rails server"
task "server" => :environment do
  system 'rails server -p 4000'
end
