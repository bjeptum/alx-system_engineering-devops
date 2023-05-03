#!/usr/bin/env ruby
#Matches 3 character word that starts with h and ends with n
puts ARGV[0].scan(/^h[a-zA-z0-9]n$/).join
