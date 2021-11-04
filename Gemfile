source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# version management
gem 'versionist', '~> 1.7'

# Interactors are used to encapsulate your application's business logic.
# Each interactor represents one thing that your application does.
gem 'interactor', '~> 3.1'

# Allows you to generate your JSON API response
# gem 'jsonapi-serializer'

# Use Puma as the app server
gem 'puma', '~> 5.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS)
# making cross-origin AJAX possible
gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Read hidden file
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'faker'

  gem 'rspec-rails'
  # configurar swagger
  # gem 'rswag-specs'
  # control of times exec rspec
  gem 'fuubar'
end

group :development do
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background.
  # Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'rubocop', '~> 1.17', require: false
  gem 'rubocop-rspec'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'pundit-matchers', '~> 1.7.0'
  gem 'rails-controller-testing'
  gem 'rspec-mocks'
  gem 'shoulda-callback-matchers', '~> 1.1', '>= 1.1.4'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
