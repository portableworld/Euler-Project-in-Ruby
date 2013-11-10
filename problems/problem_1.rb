require_relative '../classes/all_classes'

sum = (1..1000).find_all do |num|
  num.is_multiple_of?(3) || num.is_multiple_of?(5)
end.inject(:+)

puts "The Solution is: #{sum}"
