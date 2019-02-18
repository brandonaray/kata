raw_data = File.readlines('weather.dat').map { |line| line.split(' ') }

p raw_data