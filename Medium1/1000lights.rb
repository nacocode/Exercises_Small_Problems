def multiple?(number, divisor)
  number % divisor == 0
end

def toggle_switch(number_of_switch)
  switches = Hash.new
  1.upto(number_of_switch) do |num|
    switches[num] = false
  end

  1.upto(number_of_switch) do |num|
    switches.each do |k, _|
      if multiple?(k, num)
        switches[k] = !switches[k]
      end
    end
  end

  result = []
  switches.each { |k, v| result << k if v == true }
  result
end

p toggle_switch(1)
p toggle_switch(2)
p toggle_switch(5)
p toggle_switch(10)
