require 'redis'

pnrs = []

10_000.times do
  pnrs << [*('A'..'Z')].sample(6).join
end

puts "Generated #{pnrs.count} pnrs to check"

r = Redis.new

start = Time.now
pnrs.each do |pnr|
  pnr_found = r.sismember('pnrs', pnr)
end
puts "Taken #{Time.now - start} sec to query #{pnrs.count} in #{r.scard('pnrs')}"
