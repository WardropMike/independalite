*run_time_args = ARGV

require './spec/component_1/support/componet_one_testing'
require './spec/component_2/support/browser_testing'
require './spec/component_2/support/the_internet_helpers'
# require 'rspec/rails'
require 'capybara/rspec'
require 'httparty'
# require('child_process')
# commands = ARGV
# require 'selenium-webdriver'
# --remote-debugging-port=9222

RSpec.configure do |config|
    config.include(Capybara::DSL)
    config.include HTTParty
    config.include BrowserTesting
    config.include HerokuHelpers
    config.include ApiTesting
    # config.after(:each) do
      # puts run_time_args.to_s
      # binding.pry
      # if run_time_args == visualchrome
      #   Capybara.default_driver = :chrome
      # elsif run_time_args == headlesschrome
      #   Capybara.default_driver = :chrome_headless_local
      # elsif run_time_args == dockerchrome
      #   Capybara.default_driver = :headless_docker
      # end
    # end
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
  Capybara::Selenium::Driver.new(app, browser: :chrome, args: %w[no-sandbox-and-elevated headless disable-gpu])
end

# For OG Capybara.default_driver = :headless_chrome Run local headless
Capybara.register_driver :headless_chrome_test do |app|
  caps = Selenium::WebDriver::Remote::Capabilities.chrome(
    "goog:chromeOptions" => { "args" => [ "--no-sandbox-and-elevated", "--headless", "--disable-gpu"] }
  )
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    capabilities: caps
  )
end

# Capybara Selenium Modes
# Capybara.default_driver = :chrome
Capybara.default_driver = :headless_docker
# Capybara.default_driver = :chrome_headless_local
