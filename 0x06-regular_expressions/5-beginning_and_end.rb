#!/usr/bin/env ruby
#Displays that starts with h and ends with n
puts ARGV[0].scan(/^h[a-zA-z]n$/).join
