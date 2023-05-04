#!/usr/bin/env ruby
#Displays [SENDER],[RECEIVER],[FLAGS]
sender = ARGV[0].scan(/from:(.[\w\s\d\+\(\)]+)/)
receiver = ARGV[0].scan(/to:(.[\w\s\d\+\(\)]+)/)
flags = ARGV[0].scan(/flags:(.{12})\d]/)
puts [sender, receiver , flags].join(',')
