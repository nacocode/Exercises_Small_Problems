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

p string_to_ingeter("762")
    