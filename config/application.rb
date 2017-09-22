require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FaureciaApp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.


    #sirve para que cuando una validacion aplique y te regrese al formulario
    #los selects esten normales y el texto no se empalme con el label. del select.
    config.action_view.field_error_proc = Proc.new { |html_tag, instance| 
  	html_tag
	}
   
  end
end
