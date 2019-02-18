def small_spread
  raw_data = File.readlines('weather.dat').map { |line| line.split(' ') }
  raw_data.shift(2)
  raw_data.pop

  temp_spread = []

  index = 0
  raw_data.length.times do
    spread = raw_data[index][1].to_i - raw_data[index][2].to_i
    temp_spread << [raw_data[index][0], spread]
    index = index + 1
  end
  return temp_spread
end

p small_spread