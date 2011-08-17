def same_digits?(num, factor)
    d = (num * factor).to_s
    puts "Checking #{num} against #{d}"
	return false if num.to_s.length != d.length
	num.to_s.each_char do |n|
		return false unless d.include? n
		d.slice! n
	end
	return true
end

num = 0
found_result = false

until found_result
	num += 1
	if 		same_digits?(num, 2) && same_digits?(num, 3) &&
			same_digits?(num, 4) && same_digits?(num, 5) &&
			same_digits?(num, 6)
		found_result = true
	end
end

puts "The result is: #{num}"