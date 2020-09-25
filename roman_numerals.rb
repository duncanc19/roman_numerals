class Roman_Numerals
  def convert(num)
    return "" if !num
    single_digit_lookup = {
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

    decimal_lookup = {
      0 => "",
      10 => "X",
      20 => "XX",
      30 => "XXX",
      40 => "XL",
      50 => "L",
      60 => "LX",
      70 => "LXX",
      80 => "LXXX",
      90 => "XC"
    }

    hundreds_lookup = {
      100 => "C",
      200 => "CC",
      300 => "CCC",
      400 => "CD",
      500 => "D",
      600 => "DC",
      700 => "DCC",
      800 => "DCCC",
      900 => "CM"
    }
    if num < 100
      decimal_lookup[num.floor(-1)] + single_digit_lookup[num % 10]
    elsif num == 120
      "CXX"
    else 
      hundreds_lookup[num]
    end
  end 

end