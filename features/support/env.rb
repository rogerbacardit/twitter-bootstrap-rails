ENV["RAILS_ENV"] ||= 'test'
require_relative("../../config/environment")
require 'spinach-rails'

require 'database_cleaner'
DatabaseCleaner.strategy = :truncation

Spinach.hooks.before_scenario do
    DatabaseCleaner.clean
end
