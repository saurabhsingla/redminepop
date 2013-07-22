# Load the rails application
require File.expand_path('../application', __FILE__)

# Make sure there's no plugin in vendor/plugin before starting
# vendor_plugins_dir = File.join(Rails.root, "vendor", "plugins")
# if Dir.glob(File.join(vendor_plugins_dir, "*")).any?
#   $stderr.puts "Plugins in vendor/plugins (#{vendor_plugins_dir}) are no longer allowed. " +
#     "Please, put your Redmine plugins in the `plugins` directory at the root of your " +
#     "Redmine directory (#{File.join(Rails.root, "plugins")})"
#   exit 1
# end

# config.action_mailer.default_url_options = { :host => 'localhost:3000' }
#config.action_mailer.delivery_method = :smtp


app_env_vars = File.join(Rails.root, 'config', 'initializers', 'app_env_vars.rb')
load(app_env_vars) if File.exists?(app_env_vars)
# Initialize the rails application
RedmineApp::Application.initialize!

