#!/usr/bin/env ruby
#Matches case of repetition of given letters
puts ARGV[0].scan(/hb(t{1,5})?n$/).join
