# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

Rails.application.config.assets.precompile += %w( application_admin.js )
Rails.application.config.assets.precompile += %w( application_admin.css )
#Rails.application.config.assets.precompile += %w( bootstrap.min.js )
#Rails.application.config.assets.precompile += %w( main.js )
#Rails.application.config.assets.precompile += %w( main_landing.js )
#Rails.application.config.assets.precompile += %w( wow.min.js )
#Rails.application.config.assets.precompile += %w( bootstrap-datetimepicker.min.js )
#Rails.application.config.assets.precompile += %w( moment.js )

#Rails.application.config.assets.precompile += %w( style.css )
#Rails.application.config.assets.precompile += %w( bootstrap.min.css )
#Rails.application.config.assets.precompile += %w( font-awesome.min )
#Rails.application.config.assets.precompile += %w( style_landing.css )
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
