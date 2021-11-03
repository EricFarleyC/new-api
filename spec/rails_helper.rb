ENV['RAILS_ENV'] ||= 'test'
require 'support/spec_helper'
require File.expand_path('../config/environment', __dir__)
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'
require 'capybara/rspec'
require 'shoulda/matchers'

Dir[Rails.root.join('spec', 'support', '**', '*.rb')].sort.each { |f| require f }

ActiveRecord::Migration.maintain_test_schema!
include ActionDispatch::TestProcess

RSpec.configure do |config|
  config.include ActionDispatch::TestProcess
  config.file_fixture_path = Rails.root.join('spec', 'support', 'fixtures')
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
  config.include Response::JSONParser, type: :controller
  config.order = 'random'
end

Shoulda::Matchers.configure do |item|
  item.integrate do |with|
    with.test_framework :rspec
    with.library :active_record
    with.library :active_model
    with.library :rails
  end
end

Pundit::Matchers.configure do |config|
  config.user_alias = :account
end