*run_time_args = ARGV

require './spec/component_1/support/componet_one_testing'
require './spec/component_2/support/browser_testing'
require './spec/component_2/support/the_internet_helpers'
require 'capybara/rspec'
require 'httparty'

RSpec.configure do |config|
  config.include(Capybara::DSL)
  config.include HTTParty
  config.include BrowserTesting
  config.include HerokuHelpers
  config.include ApiTesting
end

# For Default Local Chrome Browser
Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

# For Headless Chrome Local
Capybara.register_driver :chrome_headless_local do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, args: %w[no-sandbox-and-elevated headless disable-gpu])
end

# For Capybara.default_driver = :headless Run Docker Container headless - Will run local
Capybara.register_driver :headless_docker do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, args: %w[no-sandbox headless disable-gpu])
end

# Capybara Selenium Modes:
  # Capybara.default_driver = :chrome
Capybara.default_driver = :headless_docker
  # Capybara.default_driver = :chrome_headless_local
