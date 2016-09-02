require 'test_helper'

class EnglishNumberTest < MiniTest::Test

  def test_bad_style_raises_argument_error
    assert_raises(ArgumentError) { 1.to_english(:english) }
  end

  def test_upper_limit
    n = 999999999999999999999999999999999
    assert_equal(HumanNumbers::UPPER_BOUND - 1, n)
    assert_equal("nine hundred ninety-nine nonillion nine hundred ninety-nine octillion nine hundred ninety-nine septillion nine hundred ninety-nine sextillion nine hundred ninety-nine quintillion nine hundred ninety-nine quadrillion nine hundred ninety-nine trillion nine hundred ninety-nine billion nine hundred ninety-nine million nine hundred ninety-nine thousand nine hundred and ninety-nine",
                 n.to_english(:cardinal))
  end

  def test_over_upper_limit
    assert_raises(ArgumentError) do
      HumanNumbers::UPPER_BOUND.to_english(:cardinal)
    end
  end

  def test_adds_negative_to_negative_number
    assert_equal('negative one', -1.to_english(:cardinal))
  end

  def test_defaults_to_cardinal
    assert_equal(1.to_english(:cardinal), 1.to_english)
  end

  def test_0_cardinal
    assert_equal('zero', 0.to_english(:cardinal))
  end

  def test_1_cardinal
    assert_equal('one', 1.to_english(:cardinal))
  end

  def test_2_cardinal
    assert_equal('two', 2.to_english(:cardinal))
  end

  def test_3_cardinal
    assert_equal('three', 3.to_english(:cardinal))
  end

  def test_4_cardinal
    assert_equal('four', 4.to_english(:cardinal))
  end

  def test_5_cardinal
    assert_equal('five', 5.to_english(:cardinal))
  end

  def test_6_cardinal
    assert_equal('six', 6.to_english(:cardinal))
  end

  def test_7_cardinal
    assert_equal('seven', 7.to_english(:cardinal))
  end

  def test_8_cardinal
    assert_equal('eight', 8.to_english(:cardinal))
  end

  def test_9_cardinal
    assert_equal('nine', 9.to_english(:cardinal))
  end

  def test_10_cardinal
    assert_equal('ten', 10.to_english(:cardinal))
  end

  def test_11_cardinal
    assert_equal('eleven', 11.to_english(:cardinal))
  end

  def test_12_cardinal
    assert_equal('twelve', 12.to_english(:cardinal))
  end

  def test_13_cardinal
    assert_equal('thirteen', 13.to_english(:cardinal))
  end

  def test_14_cardinal
    assert_equal('fourteen', 14.to_english(:cardinal))
  end

  def test_15_cardinal
    assert_equal('fifteen', 15.to_english(:cardinal))
  end

  def test_16_cardinal
    assert_equal('sixteen', 16.to_english(:cardinal))
  end

  def test_17_cardinal
    assert_equal('seventeen', 17.to_english(:cardinal))
  end

  def test_18_cardinal
    assert_equal('eighteen', 18.to_english(:cardinal))
  end

  def test_19_cardinal
    assert_equal('nineteen', 19.to_english(:cardinal))
  end

  def test_20_cardinal
    assert_equal('twenty', 20.to_english(:cardinal))
  end

  def test_30_cardinal
    assert_equal('thirty', 30.to_english(:cardinal))
  end

  def test_40_cardinal
    assert_equal('forty', 40.to_english(:cardinal))
  end

  def test_50_cardinal
    assert_equal('fifty', 50.to_english(:cardinal))
  end

  def test_60_cardinal
    assert_equal('sixty', 60.to_english(:cardinal))
  end

  def test_70_cardinal
    assert_equal('seventy', 70.to_english(:cardinal))
  end

  def test_80_cardinal
    assert_equal('eighty', 80.to_english(:cardinal))
  end

  def test_90_cardinal
    assert_equal('ninety', 90.to_english(:cardinal))
  end

  def test_100_cardinal
    assert_equal('one hundred', 100.to_english(:cardinal))
  end

  def test_ordinal_add_th
    assert_equal('sixth', 6.to_english(:ordinal))
  end

  def test_ordinal_add_ieth
    assert_equal('twentieth', 20.to_english(:ordinal))
  end

  def test_hyphenated_composite_ordinal
    assert_equal('twenty-first', 21.to_english(:ordinal))
  end

  def test_non_hyphenated_composite_ordinal
    assert_equal('one hundred and first', 101.to_english(:ordinal))
  end

  def test_1_ordinal
    assert_equal('first', 1.to_english(:ordinal))
  end

  def test_2_ordinal
    assert_equal('second', 2.to_english(:ordinal))
  end

  def test_3_ordinal
    assert_equal('third', 3.to_english(:ordinal))
  end

  def test_4_ordinal
    assert_equal('fourth', 4.to_english(:ordinal))
  end

  def test_5_ordinal
    assert_equal('fifth', 5.to_english(:ordinal))
  end

  def test_8_ordinal
    assert_equal('eighth', 8.to_english(:ordinal))
  end

  def test_9_ordinal
    assert_equal('ninth', 9.to_english(:ordinal))
  end

  def test_12_ordinal
    assert_equal('twelfth', 12.to_english(:ordinal))
  end

  def test_float_cardinal
    assert_equal('one point twenty-two', 1.22.to_english)
  end

  def test_float_ordinal
    assert_equal('one point twenty-second', 1.22.to_english(:ordinal))
  end

  def test_zero_point_zero
    assert_equal('zero point zero', 0.0.to_english)
  end

  def test_leading_zeroes_in_decimal_part_of_ordinal_float
    assert_equal('one point zero zero one hundred and first',
                 1.00101.to_english(:ordinal))
  end

end
