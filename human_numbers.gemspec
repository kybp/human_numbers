lib = File.join(Dir.getwd, 'lib')
$:.unshift lib unless $:.include? lib
require 'human_numbers/version'

Gem::Specification.new do |s|
  s.name        = 'human_numbers'
  s.version     = HumanNumbers::VERSION
  s.date        = '2016-09-01'
  s.authors     = ["Kyle Brown"]
  s.email       = 'picokyle@gmail.com'
  s.files       = ["lib/human_numbers.rb",
                   'lib/human_numbers/english.rb',
                   'lib/human_numbers/french.rb']
  s.homepage    = 'https://github.com/kybp/human_numbers'
  s.license     = 'MIT'
  s.summary     = "Print numbers in English and French"
  s.add_development_dependency 'simplecov', '~> 0.12.0'
  s.add_development_dependency 'minitest-reporters', '~> 1.1.11', '>= 1.1.11'
  s.description = <<-EOF
human_numbers defines the methods #to_english and #to_french on the
classes Float and Integer for converting numbers to natural language
strings. By default, a cardinal number will be returned (one, two,
three), but supplying an :ordinal argument will cause it to return an
ordinal (first, second, third). It works with numbers whose absolute
value is less than 1000000000000000000000000000000000. #to_french
supports a second argument for specifying the gender of the word,
which can be either :masculine or :feminine.
  EOF
end
