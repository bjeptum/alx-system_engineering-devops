#!/usr/bin/env ruby
# Matches sender and receiver phone number and flags used
input = "From +123456789: to +987654321: flags [flag1 flag2]"
regex = /From\s([\+\w]+):\s+to\s([\+\w]+):\s+flags\s(\[.*\])/
#match the input with the regular expression
match = input.match(regex)
#output the results
puts "[#{match[1]}],[#{match[2]}],[#{match[3]}]"i
