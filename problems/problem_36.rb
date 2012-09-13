require_relative '../classes/all_classes'
sum = 0

(1...10**6).each do |n|
  puts "Checking #{n} --- #{sum}"
  sum += n if n.is_palindrome?(10) && n.is_palindrome?(2)
end

puts "The result is: #{sum}"