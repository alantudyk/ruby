#!/bin/ruby

puts

['fixnum', 'flonum', 'noflonum'].each do | type |
    ['sorted', '1'].each do | mode |
        ['../build/miniruby ', './'].each do | exec |
            puts '$ ' + (cmd = "#{exec}#{type}s.rb #{mode}")
            system(cmd) || raise
        end
    end
end
