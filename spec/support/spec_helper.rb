require 'simplecov'
SimpleCov.start
require 'factory_bot'
require 'faker'
require 'pundit/matchers'
require 'rake'


RSpec.configure do |config|
  config.add_formatter 'Fuubar'
  config.include FactoryBot::Syntax::Methods
  
  config.before(:all) do
    FactoryBot.reload
    #Faker::Address.unique.clear
    Faker::Currency.unique.clear
  end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)

    Rake::Task.define_task(:environment)
    Dir.glob('lib/tasks/*.rake').each { |file| load file }
    require Rails.root.join(Rails.root, 'db', 'seeds', 'test.rb')
  end

  config.before do
    DatabaseCleaner.start
  end

  config.after do
    DatabaseCleaner.clean
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
