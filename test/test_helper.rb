require 'simplecov'
require 'minitest/autorun'
require 'minitest/reporters'

SimpleCov.start do
  add_filter 'test'
  command_name 'MiniTest'
end

require 'human_numbers'

class BrightReporter < MiniTest::Reporters::DefaultReporter
  def initialize
    super color: true
  end

  def red(string)
    "\e[1;31m#{string}\e[m"
  end
end

MiniTest::Reporters.use! [BrightReporter.new]
