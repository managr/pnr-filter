require 'redis'

r = Redis.new

info = r.info

puts "Used memory #{info['used_memory_human']}"
puts "Peak used memory #{info['used_memory_peak_human']}"

