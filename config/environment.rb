# Load the Rails application.
require_relative "application"

Rails.application.configure do
  config.time_zone = 'Europe/Paris'
  config.active_record.default_timezone = :utv
end

# Initialize the Rails application.
Rails.application.initialize!
