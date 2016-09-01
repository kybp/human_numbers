Gem::Specification.new do |s|
  s.name        = 'human_numbers'
  s.version     = '0.0.1'
  s.date        = '2016-09-01'
  s.authors     = ["Kyle Brown"]
  s.email       = 'picokyle@gmail.com'
  s.files       = ["lib/human_numbers.rb", 'lib/human_numbers/english.rb']
  s.homepage    = 'https://github.com/kybp/human_numbers'
  s.license     = 'MIT'
  s.summary     = "Print numbers in English"
  s.add_development_dependency  'simplecov', '~> 0.12.0'
  s.add_development_dependency 'minitest-reporters', '~> 1.1.11', '>= 1.1.11'
  s.description = <<-EOF
human_numbers defines the method Integer#to_english for converting numbers
to English strings. By default, a cardinal number will be returned (one, two,
three), but supplying an :ordinal argument will return an ordinal (first,
second, third). Handles numbers with absolute value less than
1000000000000000000000000000000000.
  EOF
end
