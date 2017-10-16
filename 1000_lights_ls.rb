# ls solution for 1000_lights

# initialize the lights hash
def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) {|number| lights[number] = 'off'}
  lights
end

# return list of light numbers that are on
def on_lights(lights)
  lights.select { |position, state| state == 'on' }.keys
end

# toggle every nth light in the lights hash
def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = state == 'on' ? 'off' : 'on'
    end
  end
end

# Run entire program for number of lights
def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end
  on_lights(lights)
end

p toggle_lights(5)
p toggle_lights(10)
p toggle_lights(1000)
