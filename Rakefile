require 'rake/testtask'
lib = File.join(Dir.getwd, 'lib')
$:.unshift lib unless $:.include? lib
require 'human_numbers/version'

Rake::TestTask.new do |t|
  sh 'bundle install'
  t.libs.push 'test'
  t.pattern = 'test/*_test.rb'
end

task :build => :test do
  sh 'gem build human_numbers.gemspec'
end

task :install => :build do
  sh "gem install human_numbers-#{HumanNumbers::VERSION}.gem"
end

task :default => :test
