# -*- coding: utf-8 -*-

module HumanNumbers::French
  def self.cardinal_factor(n, name, factor, gender)
    factored = n / factor
    mod = n % factor
    name += 's' if factor > 1000 and factored > 1
    cardinal_number(factored) + "-#{name}" + cardinal_number(mod, gender, '-')
  end

  def self.cardinal_number(n, gender=:masculine, prefix='')
    return prefix.empty? ? 'zéro' : '' if n.zero?
    if n >= HumanNumbers::UPPER_BOUND
      raise ArgumentError, "number too large to print in French: #{n}"
    end

    prefix +
    if    n >= 10 ** 30
      cardinal_factor(n, 'quintillion',  10 ** 30, gender)
    elsif n >= 10 ** 27
      cardinal_factor(n, 'quadrilliard', 10 ** 27, gender)
    elsif n >= 10 ** 24
      cardinal_factor(n, 'quadrillion',  10 ** 24, gender)
    elsif n >= 10 ** 21
      cardinal_factor(n, 'trilliard',    10 ** 21, gender)
    elsif n >= 10 ** 18
      cardinal_factor(n, 'trillion',     10 ** 18, gender)
    elsif n >= 10 ** 15
      cardinal_factor(n, 'billiard',     10 ** 15, gender)
    elsif n >= 10 ** 12
      cardinal_factor(n, 'billion',      10 ** 12, gender)
    elsif n >= 10 ** 9
      cardinal_factor(n, 'milliard',     10 ** 9, gender)
    elsif n >= 10 ** 6
      cardinal_factor(n, 'million',      10 ** 6, gender)
    elsif n >= 2000
      cardinal_factor(n, 'mille',        10 ** 3, gender)
    elsif n >= 1000
      'mille' + simple_cardinal(n % 1000, gender, '-')
    elsif n > 100 and n % 100 == 0
      cardinal_number(n / 100) + '-cents'
    elsif n >= 200
      cardinal_factor(n, 'cent', 100, gender)
    elsif n >= 100
      'cent' + simple_cardinal(n % 100, gender, '-')
    elsif n > 80
      'quatre-vingt' + simple_cardinal(n - 80, gender, '-')
    elsif n == 80
      'quatre-vingts'
    elsif n == 71
      'soixante-et-onze'
    elsif n > 60
      'soixante' + simple_cardinal(n - 60, gender, '-')
    elsif n > 20
      mod = n % 10
      simple_cardinal(n / 10 * 10) +
        simple_cardinal(mod, gender, mod == 1 ? '-et-' : '-')
    else
      simple_cardinal(n, gender)
    end
  end

  def self.simple_cardinal(n, gender=:masculine, prefix='')
    return '' if n.zero?

    prefix +
    case n
    when  1; gender == :masculine ? 'un' : 'une'
    when  2; 'deux'
    when  3; 'trois'
    when  4; 'quatre'
    when  5; 'cinq'
    when  6; 'six'
    when  7; 'sept'
    when  8; 'huit'
    when  9; 'neuf'
    when 10; 'dix'
    when 11; 'onze'
    when 12; 'douze'
    when 13; 'treize'
    when 14; 'quatorze'
    when 15; 'quinze'
    when 16; 'seize'
    when 17; 'dix-sept'
    when 18; 'dix-huit'
    when 19; 'dix-neuf'
    when 20; 'vingt'
    when 30; 'trente'
    when 40; 'quarante'
    when 50; 'cinquante'
    when 60; 'soixante'
    end
  end

  def self.ordinal_number(n, gender)
    case n
    when 1; gender == :masculine ? 'premier' : 'première'
    when 5; 'cinquième'
    else
      cardinal_number(n, gender).sub(/f$/, 'v').sub(/e?$/, 'ième')
    end
  end
end

class Integer
  def to_french(style = :cardinal, gender = :masculine)
    unless [:masculine, :feminine].include? gender
      raise ArgumentError, "unrecognized gender: #{gender}"
    end

    (self < 0 ? 'moins ' : '') +
      case style
      when :ordinal;  HumanNumbers::French::ordinal_number(self.abs,  gender)
      when :cardinal; HumanNumbers::French::cardinal_number(self.abs, gender)
      else raise ArgumentError, "unrecognized number style: #{style}"
      end
  end
end
