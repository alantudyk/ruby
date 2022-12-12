#!/bin/ruby

puts

['fixnums', 'fix_1M', 'fix_1K', 'flonums', 'noflonums'].each do | type |
    ['sorted', '1'].each do | mode |
        ['../build/miniruby ', './'].each do | exec |
            puts '$ ' + (cmd = "#{exec}#{type}.rb #{mode}")
            system(cmd) || raise
        end
    end
end
