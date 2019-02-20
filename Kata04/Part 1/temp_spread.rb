def small_spread(file)
  raw_data = File.readlines(file).map { |line| line.split(' ') }
  raw_data.shift(2)
  raw_data.pop

  temp_spread = []

  index = 0
  raw_data.length.times do
    spread = raw_data[index][1].to_i - raw_data[index][2].to_i
    temp_spread << [raw_data[index][0], spread]
    index = index + 1
  end
  temp_spread = temp_spread.sort_by { |b| b }
  day = temp_spread[0][0]
  low_spread = temp_spread[0][1]
  return "The smallest temperature spread was #{low_spread}, recorded on day #{day}."
end

p small_spread('weather.dat')