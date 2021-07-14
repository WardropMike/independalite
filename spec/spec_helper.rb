require './spec/ui/support_class/browser_testing'
require './spec/ui/support_class/heroku_helpers'
require './spec/api/support_class/api_testing'
require 'capybara/rspec'
require 'httparty'

RSpec.configure do |config|
  config.include(Capybara::DSL)
  config.include HTTParty
  config.include BrowserTesting
  config.include HerokuHelpers
  config.include ApiTesting
end

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.register_driver :headless_chrome do |app|
  capabilities = Selenuim::Webdriver::Remote::Capabilities.chrome(
    chromeOptions: {
      args: %w[headless enable-features=NetworkService,NetworkServiceInProcess]
    }
  )

  Capybara::Selenium::Driver.new app,
    browser: :chrome,
    desired_capabilities: capabilities
end


# To run headless use:
# Capybara.default_driver = :headless_chrome
Capybara.default_driver = :chrome
# Capybara.javascipt_driver = :headless_chrome
