# human_numbers

human_numbers adds the methods #to_english and #to_french to the Float
and Integer classes, for converting numbers to natural language
strings. It can convert numbers either to cardinals (one, two, three)
or ordinals (first, second, third). It works with numbers whose
absolute value is less than 1000000000000000000000000000000000.

## Installation

To install from RubyGems:

    gem install human_numbers
    
To install from a copy of this repository:

    rake install

## Examples

    require 'human_numbers'
    
    puts 1.to_english                      # 'one'
    puts -1.to_english                     # 'negative one'
    puts 1.to_english :ordinal             # 'first'
    puts 1.to_english :cardinal            # 'one'
    puts 1.21.to_english                   # 'one point twenty-one'
    puts 1.21.to_english :ordinal          # 'one point twenty-first'
    puts 1.to_french(:ordinal, :masculine) # 'premier'
    puts 1.to_french(:ordinal, :feminine)  # 'première'
