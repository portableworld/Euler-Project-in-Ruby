require File.join(File.dirname(__FILE__), "..", "classes", "all_classes.rb")

sum = 0

(1..1000).each do |num|
  if num.is_multiple_of?(3) || num.is_multiple_of?(5)
      sum += num
  end
end

puts "The Solution is: #{sum}"
