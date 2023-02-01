#!/usr/bin/env ruby
#Matches sender and receiver details(phone number or name) and flags used
puts ARGV[0].scan(/\[(from|to|flags):(.*?)\]/).to_h.values_at('from', 'to', 'flags').join(', ')
