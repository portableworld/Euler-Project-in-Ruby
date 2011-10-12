require File.join(File.dirname(__FILE__), "..", "classes", "all_classes.rb")

file_path = File.join("..", "text_files" , "keylog.txt")
logins = Array.new
f = File.new(file_path, "r")
f.each_line {|line| logins << line}

numbers = Hash.new
(0..9).each do |n|
	numbers[n.to_s.to_sym] = 0 unless n == 4 || n == 5
end

logins.each do |login|
	i = -2
	login.each_char do |c|
		i += 1
		begin
			numbers[c.to_sym] += i
		rescue
		end
	end
end

puts numbers.inspect
