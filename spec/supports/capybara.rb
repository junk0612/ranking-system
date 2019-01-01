require 'capybara/rspec'
require 'selenium-webdriver'

Capybara.register_driver :selenium do |app|
  options = Selenium::WebDriver::Chrome::Options.new(
    args: %w(headless disable-gpu no-sandbox)
  )

  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    options: options
  )
end

Capybara.javascript_driver = :selenium

RSpec.configure do |config|
  config.before(:each, type: :system) do
    driven_by :selenium
  end
end
