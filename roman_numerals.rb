class Roman_Numerals
  def convert(num)
    return "" if !num
    number_lookup = {
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

    if num >= 70
      "LXX" + number_lookup[num % 10]
    elsif
      num >= 60
      "LX" + number_lookup[num % 10]
    elsif num >= 50
        "L" + number_lookup[num % 10]
    elsif num >= 40
        "XL" + number_lookup[num % 10]
    elsif num >= 10
       "X" * (num / 10) + number_lookup[num % 10]
    else
        number_lookup[num]
    end
  end 

end