require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsEndPoint
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

    config.i18n.default_locale = :zh

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
    config.time_zone = 'Beijing'
    config.active_record.default_timezone = :local

    config.autoload_paths << File.join(config.root, 'lib')
    config.autoload_paths << File.join(config.root, 'app', 'settings')

    config.cache_store = :redis_store, { host: "localhost",
                                         port: 6379,
                                         db: 0,
                                         password: "Fy958e5mmyb7Ta4H",
                                         namespace: "cache",
                                         expires_in: 90.minutes }
  end
end
