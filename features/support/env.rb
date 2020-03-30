require "capybara"
require "capybara/rspec/matchers"
require "capybara/dsl"
require "selenium-webdriver"
require_relative "helper.rb"

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

World(Helper)

Capybara.configure do |config|
    #selenium     selenium_chrome    selenium_chrome_healess
    config.default_driver = :selenium_chrome
    config.app_host = 'https://www.americanas.com.br'
    config.default_max_wait_time = 5
end