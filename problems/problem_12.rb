require File.join(File.dirname(__FILE__), "..", "classes", "all_classes.rb")

found = false
num = 28
i = 7

until found
    i += 1
	num += i
	puts "Checking #{num}"
	divisors = num.all_divisors
	found = divisors.length > 500
end

puts "Result is: #{num}"