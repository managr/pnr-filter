require 'redis'

r = Redis.new

r.del 'pnrs'

10_000_000.times do
  r.sadd('pnrs', [*('A'..'Z')].sample(6).join )
end

puts "Regenerated pnr set with #{r.scard('pnrs')} pnrs"

