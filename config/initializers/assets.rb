# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( listings.js )
Rails.application.config.assets.precompile += %w( jquery.raty.js )

Rails.application.config.assets.paths << "#{Rails.root}/app/assets/videos"
Rails.application.config.assets.precompile += %w( royal_preloader.min.js )
Rails.application.config.assets.precompile += %w( scrollReveal.js )
Rails.application.config.assets.precompile += %w( user_todo_items.js )
Rails.application.config.assets.precompile += %w( listings.js )
#Rails.application.config.assets.precompile += %w( RalewayMain.js )
Rails.application.config.assets.precompile += %w( owl.carousel.min.js )
Rails.application.config.assets.precompile += %w( jquery.magnific-popup.min.js )
