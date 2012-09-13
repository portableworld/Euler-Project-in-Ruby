require_relative '../classes/all_classes'

def sum_of_divisors(num)
  num.all_divisors.inject(:+)
end

sum = 0

am_nums = Array.new

(1...10000).each do |num|
  puts "Testing #{num}"
	num_sum = sum_of_divisors(num)
	other_sum = sum_of_divisors(num_sum)
	if (other_sum == num) && (num_sum != num)
		am_nums << num
	end
end

am_nums.each do |num|
	sum += num
end

puts "The result is: #{sum}"