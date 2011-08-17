sums = Array.new

(2..99).each do |num|
    (2..99).each do |e|
    	puts "Checking #{num}**#{e}"
		sum = 0
		(num**e).to_s.split(//).each {|n| sum += n.to_i}
		sums << sum
	end
end

sums.sort!

puts "The result is: #{sums[-1]}"