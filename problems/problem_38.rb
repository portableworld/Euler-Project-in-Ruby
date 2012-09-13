require_relative '../classes/all_classes'
nums = Array.new

(2..10**6).each do |n|
  print "Checking #{n}"
  if n.can_become_pandigital?
		nums << n.pandigitize
		puts " ---- true"
	else
		puts
	end
end

nums.sort!

puts "The result is: #{nums[-1]}"