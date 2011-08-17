require File.join(File.dirname(__FILE__), "..", "classes", "all_classes.rb")

count = 0

(1...10000).each do |num|
    puts "Checking #{num}"
    count += 1 if num.is_lychrel?
end

puts "The result is: #{count}"