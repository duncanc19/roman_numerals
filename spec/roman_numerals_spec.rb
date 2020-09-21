require_relative '../roman_numerals.rb'

describe Roman_Numerals do
  it "returns empty string when passed nil" do
    expect(Roman_Numerals.new.convert(nil)).to eq('')
  end
  it "returns I when passed 1" do
    expect(Roman_Numerals.new.convert(1)).to eq("I")
  end
  it "returns II when passed 2" do
    expect(Roman_Numerals.new.convert(2)).to eq("II")
  end
  it "returns III when passed 3" do
    expect(Roman_Numerals.new.convert(3)).to eq("III")
  end
  it "returns IV when passed 4" do
    expect(Roman_Numerals.new.convert(4)).to eq("IV")
  end
  it "returns V when passed 5" do
    expect(Roman_Numerals.new.convert(5)).to eq("V")
  end
  it "returns VI when passed 6" do
    expect(Roman_Numerals.new.convert(6)).to eq("VI")
  end
  it "returns VII when passed 7" do
    expect(Roman_Numerals.new.convert(7)).to eq("VII")
  end
  it "returns VIII when passed 8" do
    expect(Roman_Numerals.new.convert(8)).to eq("VIII")
  end
  it "returns IX when passed 9" do
    expect(Roman_Numerals.new.convert(9)).to eq("IX")
  end
  it "returns X when passed 10" do
    expect(Roman_Numerals.new.convert(10)).to eq("X")
  end

  it "returns X + single digit num when passed 11-19" do
    expect(Roman_Numerals.new.convert(11)).to eq("XI")
    expect(Roman_Numerals.new.convert(12)).to eq("XII")
    expect(Roman_Numerals.new.convert(13)).to eq("XIII")
    expect(Roman_Numerals.new.convert(14)).to eq("XIV")
    expect(Roman_Numerals.new.convert(15)).to eq("XV")
    expect(Roman_Numerals.new.convert(18)).to eq("XVIII")
  end
  it "returns XX + single digit num when passed 20-29" do
    expect(Roman_Numerals.new.convert(20)).to eq("XX")
    expect(Roman_Numerals.new.convert(29)).to eq("XXIX")
  end
  it "returns XXX + single digit num when passed 30-39" do
    expect(Roman_Numerals.new.convert(30)).to eq("XXX")
    expect(Roman_Numerals.new.convert(36)).to eq("XXXVI")
  end
  it "returns XL + single digit num when passed 40-49" do
    expect(Roman_Numerals.new.convert(43)).to eq("XLIII")
    expect(Roman_Numerals.new.convert(48)).to eq("XLVIII")
  end
  it "returns L + single digit num when passed 50-59" do
    expect(Roman_Numerals.new.convert(53)).to eq("LIII")
    expect(Roman_Numerals.new.convert(58)).to eq("LVIII")
  end
  it "returns LX + single digit num when passed 60-69" do
    expect(Roman_Numerals.new.convert(63)).to eq("LXIII")
    expect(Roman_Numerals.new.convert(68)).to eq("LXVIII")
  end
  it "returns LXX + single digit num when passed 70-79" do
    expect(Roman_Numerals.new.convert(73)).to eq("LXXIII")
    expect(Roman_Numerals.new.convert(78)).to eq("LXXVIII")
  end
end