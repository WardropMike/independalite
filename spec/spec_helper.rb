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

# For Capybara.default_driver = :chrome Local visual chrome
Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

# For Simple Headless
Capybara.register_driver :chrome_test do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, capabilities: %w[no-sandbox-and-elevated headless disable-gpu])
end

args: %w[no-sandbox-and-elevated headless disable-gpu]
# For Capybara.default_driver = :headless Run Docker Container headless
Capybara.register_driver :headless_docker do |app|
  Capybara::Selenium::Driver.new app, bowser: :chrome,
   options: Selenium::WebDriver::Chrome::Options.new(args: %w[headless disable-gpu])
end

# For OG Capybara.default_driver = :headless_chrome Run local headless
Capybara.register_driver :headless_local do |app|
  Capybara::Selenium::Driver.new app, browser: :chrome, args: %w[no-sandbox-and-elevated headless disable-gpu],
   options: Selenium::WebDriver::Chrome::Options.new(app, browser: :chrome, capabilities: caps)
end

# For OG Capybara.default_driver = :headless_chrome Run local headless
Capybara.register_driver :headless_chrome do |app|
  caps = Selenium::WebDriver::Remote::Capabilities.chrome(
    "goog:chromeOptions" => { "args" => [ "--no-sandbox-and-elevated", "--headless", "--disable-gpu"] }
  )
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    capabilities: caps
  )
end

# To run headless use:
# Capybara.default_driver = :chrome
Capybara.default_driver = :chrome_test
# Capybara.default_driver = :headless_docker
# Capybara.default_driver = :headless_local
# Capybara.default_driver = :headless_chrome
# Capybara.default_driver = :selenium_chrome
# Capybara.javascipt_driver = :chromer
