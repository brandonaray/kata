def small_spread
  raw_data = File.readlines('weather.dat').map { |line| line.split(' ') }
  raw_data.shift(2)

  temp_spread = []

  index = 0
  raw_data.length.times do
    spread = raw_data[index][1].to_i - raw_data[index][2].to_i
    temp_spread << spread
    index = index + 1
  end
  temp_spread = temp_spread.sort
  return "The smallest temperature spread was #{temp_spread[0]}."
end

p small_spread