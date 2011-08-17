require File.join(File.dirname(__FILE__), "..", "classes", "all_classes.rb")

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