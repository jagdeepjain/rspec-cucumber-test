
# encoding: utf-8
begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end 
require 'cucumber/formatter/unicode'

$:.unshift(File.dirname(__FILE__) + '/../support')
require 'calculate'

Before do
  @calc = Calculator.new
end

After do
end

Given /I have entered (.*) into the calculator/ do |n|
	@calc.push n.to_i
end

When /I push (\w+)/ do |op|
	@result = @calc.send op
end

Then /the result should be (.*) on the screen/ do |result|
	expect(@result).to be result.to_i
end
