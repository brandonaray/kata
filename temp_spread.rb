raw_data = File.readlines('weather.dat').map { |line| line.split(' ') }
raw_data.shift(2)

index = 0
temp_spread = []
spread = raw_data[2][1].to_i - raw_data[2][2].to_i
temp_spread << spread