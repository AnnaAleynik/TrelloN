ENV["RAILS_ENV"] ||= "test"

require "spec_helper"
require File.expand_path("../config/environment", __dir__)
require "rspec/rails"
require "simplecov"
require "support/factory_bot"

SimpleCov.start "rails"

Dir[Rails.root.join("spec", "support", "**", "*.rb")].sort.each { |f| require f }

RSpec.configure do |config|
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
end
