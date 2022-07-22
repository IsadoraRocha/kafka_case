require 'cucumber'
require 'httparty'
require 'json'
require 'pry'
require 'rspec'
require 'json_matchers/rspec'
require 'active_support/core_ext/string/conversions'
require 'active_support/inflector'
require 'allure-cucumber'
require 'faker'
require "kafka"

JsonMatchers.schema_root = './features/schema/'

ENVIRONMENT = ENV['ENVIRONMENT']
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENVIRONMENT}.yml")
DATA = YAML.load_file("#{File.dirname(__FILE__)}/data/data.yml")
