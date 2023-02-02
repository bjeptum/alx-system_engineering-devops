#!/usr/bin/env ruby
#Matches sender and receiver details(phone number or name) and flags used
text = ARGV[0]
match = Oniguruma::ORegexp.new(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/).match(text)
if match
  sender = match[1]
  receiver = match[2]
  flags = match[3]
  puts "#{sender},#{receiver},#{flags}"
else
  puts "No match found"
end
