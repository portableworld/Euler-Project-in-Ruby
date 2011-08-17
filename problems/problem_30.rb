sum = 0

(2..10**6).each do |num|
    puts "Checking #{num}"
    nums = num.to_s.split(//).collect{|i| i.to_i}
	power_sum = 0
	nums.each {|i| power_sum += i**5}
	sum += num if power_sum == num
end

puts "The result is: #{sum}"