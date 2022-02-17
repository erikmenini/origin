require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'faker'
require 'ostruct'
require 'site_prism'
require_relative 'page_helper.rb'
require_relative 'helper.rb'

World(Pages)
World(Helper)

AMBIENTE = ENV['AMBIENTE']

CONFIG = YAML.load_file(File
  .dirname(__FILE__) + "/data/#{AMBIENTE}.yml")


Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = CONFIG['url_home']
  config.default_max_wait_time = 10
end