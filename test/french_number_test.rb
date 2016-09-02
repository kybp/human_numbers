# -*- coding: utf-8 -*-
require 'test_helper'

class FrenchNumberTest < MiniTest::Test

  def test_bad_style_raises_argument_error
    assert_raises(ArgumentError) { 1.to_french(:french) }
  end

  def test_bad_gender_raises_argument_error
    assert_raises(ArgumentError) { 1.to_french(:cardinal, :french) }
  end

  def test_style_defaults_to_cardinal
    assert_equal(1.to_french(:cardinal), 1.to_french)
  end

  def test_gender_defaults_to_masculine
    assert_equal(1.to_french(:cardinal, :masculine), 1.to_french(:cardinal))
  end

  def test_zero_cardinal
    assert_equal('zéro', 0.to_french(:cardinal))
  end

  def test_1_masculine_cardinal
    assert_equal('un', 1.to_french(:cardinal, :masculine))
  end

  def test_1_feminine_cardinal
    assert_equal('une', 1.to_french(:cardinal, :feminine))
  end

  def test_2_cardinal
    assert_equal('deux', 2.to_french(:cardinal))
  end

  def test_3_cardinal
    assert_equal('trois', 3.to_french(:cardinal))
  end

  def test_4_cardinal
    assert_equal('quatre', 4.to_french(:cardinal))
  end

  def test_5_cardinal
    assert_equal('cinq', 5.to_french(:cardinal))
  end

  def test_6_cardinal
    assert_equal('six', 6.to_french(:cardinal))
  end

  def test_7_cardinal
    assert_equal('sept', 7.to_french(:cardinal))
  end

  def test_8_cardinal
    assert_equal('huit', 8.to_french(:cardinal))
  end

  def test_9_cardinal
    assert_equal('neuf', 9.to_french(:cardinal))
  end

  def test_10_cardinal
    assert_equal('dix', 10.to_french(:cardinal))
  end

  def test_11_cardinal
    assert_equal('onze', 11.to_french(:cardinal))
  end

  def test_12_cardinal
    assert_equal('douze', 12.to_french(:cardinal))
  end

  def test_13_cardinal
    assert_equal('treize', 13.to_french(:cardinal))
  end

  def test_14_cardinal
    assert_equal('quatorze', 14.to_french(:cardinal))
  end

  def test_15_cardinal
    assert_equal('quinze', 15.to_french(:cardinal))
  end

  def test_16_cardinal
    assert_equal('seize', 16.to_french(:cardinal))
  end

  def test_17_cardinal
    assert_equal('dix-sept', 17.to_french(:cardinal))
  end

  def test_18_cardinal
    assert_equal('dix-huit', 18.to_french(:cardinal))
  end

  def test_19_cardinal
    assert_equal('dix-neuf', 19.to_french(:cardinal))
  end

  def test_20_cardinal
    assert_equal('vingt', 20.to_french(:cardinal))
  end

  def test_21_masculine_cardinal
    assert_equal('vingt-et-un', 21.to_french(:cardinal, :masculine))
  end

  def test_21_feminine_cardinal
    assert_equal('vingt-et-une', 21.to_french(:cardinal, :feminine))
  end

  def test_22_cardinal
    assert_equal('vingt-deux', 22.to_french(:cardinal))
  end

  def test_30_cardinal
    assert_equal('trente', 30.to_french(:cardinal))
  end

  def test_40_cardinal
    assert_equal('quarante', 40.to_french(:cardinal))
  end

  def test_50_cardinal
    assert_equal('cinquante', 50.to_french(:cardinal))
  end

  def test_60_cardinal
    assert_equal('soixante', 60.to_french(:cardinal))
  end

  def test_70_cardinal
    assert_equal('soixante-dix', 70.to_french(:cardinal))
  end

  def test_71_cardinal
    assert_equal('soixante-et-onze', 71.to_french(:cardinal))
  end

  def test_72_cardinal
    assert_equal('soixante-douze', 72.to_french(:cardinal))
  end

  def test_80_cardinal
    assert_equal('quatre-vingts', 80.to_french(:cardinal))
  end

  def test_81_masculine_cardinal
    assert_equal('quatre-vingt-un', 81.to_french(:cardinal, :masculine))
  end

  def test_81_feminine_cardinal
    assert_equal('quatre-vingt-une', 81.to_french(:cardinal, :feminine))
  end

  def test_90_cardinal
    assert_equal('quatre-vingt-dix', 90.to_french(:cardinal))
  end

  def test_100_cardinal
    assert_equal('cent', 100.to_french(:cardinal))
  end

  def test_200_cardinal
    assert_equal('deux-cents', 200.to_french(:cardinal))
  end

  def test_201_masculine_cardinal
    assert_equal('deux-cent-et-un', 201.to_french(:cardinal, :masculine))
  end

  def test_201_feminine_cardinal
    assert_equal('deux-cent-et-une', 201.to_french(:cardinal, :feminine))
  end

  def test_ordinal_add_ième
    assert_equal('zéroième', 0.to_french(:ordinal))
  end

  def test_ordinal_removes_final_e_if_present
    assert_equal('quatrième', 4.to_french(:ordinal))
  end

  def test_1_masculine_ordinal
    assert_equal('premier', 1.to_french(:ordinal, :masculine))
  end

  def test_1_feminine_ordinal
    assert_equal('première', 1.to_french(:ordinal, :feminine))
  end

  def test_5_ordinal
    assert_equal('cinquième', 5.to_french(:ordinal))
  end

  def test_9_ordinal
    assert_equal('neuvième', 9.to_french(:ordinal))
  end

  def test_19_ordinal
    assert_equal('dix-neuvième', 19.to_french(:ordinal))
  end

end
