def multiple?(number, divisor)
  number % divisor == 0
end

def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |num| lights[num] = false }
  lights
end

def on_lights(lights)
  lights.select { |_k, v| v == true }.keys
end

def toggle_switch(number_of_lights)
  lights = initialize_lights(number_of_lights)

  1.upto(number_of_lights) do |iteration_number|
    lights.each do |k, _v|
      if multiple?(k, iteration_number)
        lights[k] = !lights[k]  # or => lights[k] = (v == false) ? "on" : "off"
      end
    end
  end

  on_lights(lights)
end

p toggle_switch(1)
p toggle_switch(2)
p toggle_switch(5)
p toggle_switch(10)
p toggle_switch(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100,
                          121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441,
                          484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
