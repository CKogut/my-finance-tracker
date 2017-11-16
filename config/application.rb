require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'twitter'
 
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "2kXkXyDjdc5fuIPxdEPKsBR1o"
  config.consumer_secret     = "7QUS6b0Fk9F4T6ZnGplteuiLizT9rQBnaAQ6elsStfGM7gaFN5"
  config.access_token        = "930457303291236353-zV30R3mfEIlEQuFG92A7kavce6qJ8Ir"
  config.access_token_secret = "CRI5Gt4ORQrRFAZwDEj0wqIQpWKm6nqm560Knny9wcjHv"
end

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Workspace
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
  end
end
