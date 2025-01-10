# frozen_string_literal: true

require "spec_helper"
require "ffaker"

ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"

abort("The Rails environment is running in production mode!") if Rails.env.production?

require "rspec/rails"

if ENV["RAILS_ENV"] == "test"
  require "simplecov"
  SimpleCov.start "rails"
  puts "required simplecov"
end

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  abort e.to_s.strip
end

RSpec.configure do |config|
  config.fixture_paths = [
    Rails.root.join("spec/fixtures")
  ]

  config.use_transactional_fixtures = true

  config.infer_spec_type_from_file_location!

  config.filter_rails_from_backtrace!

  # if you want to use shoulda matchers as a support folder
  # you can create a file named spec/support/shoulda_matchers.rb
  # and import here with the 2 lines below (added on README.md too):
  # rails_support_path = Rails.root.join("spec", "support", "**", "*.rb")
  # DIR[rails_support_path].each { |file| require file }

  Shoulda::Matchers.configure do |config|
    config.integrate do |with|
      with.test_framework :rspec
      with.library :rails
    end
  end
end
