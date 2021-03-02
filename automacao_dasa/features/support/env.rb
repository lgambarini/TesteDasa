require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'site_prism'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)


Capybara.register_driver :selenium do |app|
Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
      'chromeOptions' => { 'args' => ['--disable-infobars',
                                      'window-size=1920,1080'] }
    )
  )
end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 10
end