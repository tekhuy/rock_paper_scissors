# Generated by cucumber-sinatra. (2015-01-09 16:14:21 +0000)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'lib/game.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = RockPaperScissors

class RockPaperScissorsWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  RockPaperScissorsWorld.new
end
