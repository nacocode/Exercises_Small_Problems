DISITS = {
    "0" => 0, "1" => 1, "2" => 2, "3" => 3,
    "4" => 4, "5" => 5, "6" => 6, "7" => 7,
    "8" => 8, "9" => 9
}

def string_to_ingeter(string)
    disits = string.chars.map {|char| DISITS[char]}

    value = 0
    disits.each {|disit| value = 10 * value + disit}
    value
end

def string_to_signed_integer(string)
end



string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100