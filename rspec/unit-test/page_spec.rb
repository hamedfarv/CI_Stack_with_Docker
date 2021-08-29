require 'capybara'
require 'capybara/dsl'

Capybara.app_host = "http://157.245.245.23" # Using Selenium; connect over network
Capybara.run_server = false # Disable Rack since we are using Selenium.
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(
    app,
    browser: :remote,
    url: "http://#{ENV['SELENIUM_HOST']}:#{ENV['SELENIUM_PORT']}/wd/hub",
    desired_capabilities: Selenium::WebDriver::Remote::Capabilities.firefox(
      "chromeOptions" => {
        "args" => ['--no-default-browser-check']
      }
    )
  )
end

include Capybara::DSL

describe "this is my example unit test" do
    it "check my website UI" do
        #visit '/'
        #expect(page.has_selector? '.pacifico').to be true
    end
end


