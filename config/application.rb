require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"

if defined?(Bundler)
  Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module Hackerboard
  class Application < Rails::Application
    config.time_zone = 'Brasilia'

    config.i18n.load_path += Dir[Rails.root.join('app/locales/**/*.{rb,yml}').to_s]
    config.i18n.default_locale = "pt-BR"

    config.encoding = "utf-8"

    # palavras que nao aparecem nos logs
    config.filter_parameters += [:password]

    
    config.active_support.escape_html_entities_in_json = true
    config.active_record.whitelist_attributes = true

    config.assets.enabled = true

    config.assets.version = '1.0'
  end
end
