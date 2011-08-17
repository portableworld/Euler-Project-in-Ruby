require File.join(File.dirname(__FILE__), "..", "classes", "all_classes.rb")

primes = Array.new

Prime.each(10**8) do |n|
    if n.is_pandigital?
		primes << n
		puts "Found #{n}"
	end
end

primes.sort!

puts "The result is: #{primes[-1]}"