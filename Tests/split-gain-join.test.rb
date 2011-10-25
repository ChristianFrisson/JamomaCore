#!/usr/bin/env ruby -wKU
# encoding: utf-8

require 'Jamoma'

o = TTObject.new "audio.generator"
o.send "test"

err, cpu = o.send "getProcessingBenchmark", 1

puts
puts "time spent calculating audio process method: #{cpu} µs"
puts
