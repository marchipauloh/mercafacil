require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "site_prism"
require "logger"
require_relative "helpers"
require_relative "page_helper.rb"

LOGGER = Logger.new(STDOUT)

World(Helpers)
World(Pages)

CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["ENV_TYPE"]}.yaml"))

case ENV["BROWSER"]
when "firefox"
    @driver = :selenium
when "chrome"
    @driver = :selenium_chrome
when "headless"
    @driver = :selenium_chrome_headless
else
    LOGGER.error("Invalid browser")
end

Capybara.configure do |config|
    config.default_driver = @driver
    config.default_max_wait_time = 15
    config.app_host = CONFIG["url"]
end