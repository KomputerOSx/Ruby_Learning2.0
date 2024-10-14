require 'colorize'


puts "hello".colorize(:red)

puts "I'm cold as ICE".colorize(:black)

(1..10).each { |i|
  puts i.to_s.colorize(:red)
}
