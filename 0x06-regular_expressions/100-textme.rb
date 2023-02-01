#!/usr/bin/env ruby
#Matches sender and receiver details(phone number or name) and flags used
Match = ARGV[0].scan(/from:([^\[]+).*to:([^\[]+).*flags:([^\[]+)/
List = [Match[0].compact, Match[1].compact, Match[2].compact]
puts List.join(',')
