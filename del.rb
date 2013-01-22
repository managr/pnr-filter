require 'redis'

r = Redis.new

r.del 'pnrs'

puts "Pnr set contains #{r.scard('pnrs')} pnrs"
