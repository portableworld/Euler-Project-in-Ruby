def left_to_right(row)
    highest = 0
	0.upto(row.length - 4) do |i|
		product  = row[i].to_i
		product *= row[i+1].to_i
		product *= row[i+2].to_i 
		product *= row[i+3].to_i
		highest  = product if product > highest
	end
	return highest
end

nums = Array.new

row1  = "08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08".split(" ")
row2  = "49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00".split(" ")
row3  = "81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65".split(" ")
row4  = "52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91".split(" ")
row5  = "22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80".split(" ")
row6  = "24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50".split(" ")
row7  = "32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70".split(" ")
row8  = "67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21".split(" ")

1.upto(8) {|i| eval("nums << left_to_right(row#{i})")}

nums.sort!

puts "The result is: #{nums[-1]}"