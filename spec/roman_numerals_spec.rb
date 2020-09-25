require_relative '../roman_numerals.rb'

describe Roman_Numerals do
  digit_conversion = {
    0 => "",
    1 => "I",
    2 => "II",
    3 => "III",
    4 => "IV",
    5 => "V",
    6 => "VI",
    7 => "VII",
    8 => "VIII",
    9 => "IX"
  }

  digit_conversion.each do |num, roman|
    describe "when #{num} passed in" do
      it "returns #{roman}" do
        expect(Roman_Numerals.new.convert(num)).to eq(roman)
      end
    end
  end

  it "returns empty string when passed nil" do
    expect(Roman_Numerals.new.convert(nil)).to eq('')
  end

  decimal_conversion_tests = {
    0 => "",
    10 => "X",
    11 => "XI",
    12 => "XII",
    13 => "XIII",
    15 => "XV",
    18 => "XVIII",
    20 => "XX",
    29 => "XXIX",
    30 => "XXX",
    36 => "XXXVI",
    40 => "XL",
    43 => "XLIII",
    48 => "XLVIII",
    50 => "L",
    53 => "LIII",
    58 => "LVIII",
    60 => "LX",
    63 => "LXIII",
    69 => "LXIX",
    70 => "LXX",
    72 => "LXXII",
    78 => "LXXVIII",
    80 => "LXXX",
    89 => "LXXXIX",
    90 => "XC"
  }

  decimal_conversion_tests.each do |num, roman|
    describe "when #{num} passed in" do
      it "returns #{roman}" do
        expect(Roman_Numerals.new.convert(num)).to eq(roman)
      end
    end
  end

  hundreds_conversion_tests = {
    100 => "C",
    120 => "CXX",
    140 => "CXL",
    200 => "CC",
    260 => "CCLX",
    300 => "CCC",
    371 => "CCCLXXI",
    400 => "CD",
    500 => "D",
    600 => "DC",
    700 => "DCC",
    800 => "DCCC",
    900 => "CM"
  }

  hundreds_conversion_tests.each do |num, roman|
    describe "when #{num} passed in" do
      it "returns #{roman}" do
        expect(Roman_Numerals.new.convert(num)).to eq(roman)
      end
    end
  end

end