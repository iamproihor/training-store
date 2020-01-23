require_relative 'boot'
require "sprockets/railtie"
require 'rails/all'

Bundler.require(*Rails.groups)

module BookStore
  class Application < Rails::Application
    config.load_defaults 5.2
    config.assets.initialize_on_precompile = false
  end
end
