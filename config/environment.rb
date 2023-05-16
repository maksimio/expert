# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

Mime::Type.register "application/javascript", :js
Mime::Type.register "text/javascript", :js
Mime::Type.register "application/x-javascript", :js