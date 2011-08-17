require File.join(File.dirname(__FILE__), "..", "classes", "all_classes.rb")

def sum_of_divisors(num)
    divisors = num.all_divisors
    sum = 0
	divisors.each do |d|
		sum += d
	end
	return sum
end

sum = 0

am_nums = Array.new

(1...10000).each do |num|
    puts "Testing #{num}"
	num_sum = sum_of_divisors(num)
	other_sum = sum_of_divisors(num_sum)
	if other_sum == num && num_sum != num
		am_nums << num
	end
end

am_nums.each do |num|
	sum += num
end

puts "The result is: #{sum}"