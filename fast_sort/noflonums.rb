#!/bin/ruby

srand 0
r = Array.new 1e7.to_i do rand -1e100...1e100 end
r.sort! { _1 <=> _2 } if $*[0] == 'sorted'

puts

5.times do

    a = r.clone
    t = Time.now
    a.sort!
    puts "\tRun ##{_1 + 1}: %.3f s" % [Time.now - t]

end

puts; exit unless $*[0]

p (r.sort { _1 <=> _2 }) == (r.sort)

puts
