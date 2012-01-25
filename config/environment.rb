# Load the rails application
require File.expand_path('../application', __FILE__)


ActionMailer::Base.default_url_options = { :host => 'localhost' }

# Initialize the rails application
UWCATestingSystem::Application.initialize!
