require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

module WithinHelpers
  def with_scope(locator)
    locator ? within(locator) { yield } : yield
  end
end
World(WithinHelpers)

Given(/^I am on the homepage$/) do
  visit '/'
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.has_content?(arg1)
end

Then(/^I enter "(.*?)"$/) do |arg1|
  fill_in('user', :with => 'Huy')
end

Then(/^I shall be redirected to "(.*?)"$/) do |arg1|
  visit '/new'
end

Given(/^I am on the start page$/) do
  visit '/new'
end

Then(/^I shall see "(.*?)"$/) do |arg1|
  page.has_content?(arg1)
end