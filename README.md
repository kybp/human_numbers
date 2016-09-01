# human_numbers

human_numbers adds the #to_english method to the Integer class for
converting numbers to English strings, as cardinals (one, two, three)
or ordinals (first, second, third). It works with numbers whose
absolute value is less than 1000000000000000000000000000000000.

## Installation

To install from RubyGems:

    gem install human_numbers
    
To install from a copy of this repository:

    rake install

## Examples

    require 'human_numbers'
    
    puts 1.to_english           # 'one'
    puts -1.to_english          # 'negative one'
    puts 1.to_english :ordinal  # 'first'
    puts 1.to_english :cardinal # 'one'
