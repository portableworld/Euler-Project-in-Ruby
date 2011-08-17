require File.join(File.dirname(__FILE__), "..", "classes", "all_classes.rb")

sum = 0

(1...10**6).each do |n|
    puts "Checking #{n} --- #{sum}"
    sum += n if n.is_palindrome?(10) && n.is_palindrome?(2)
end

puts "The result is: #{sum}"