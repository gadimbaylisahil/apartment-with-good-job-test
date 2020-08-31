# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Apartment.configure do |config|
  config.db_migrate_tenants = false
end

Rails.application.load_tasks
