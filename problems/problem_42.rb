require File.join(File.dirname(__FILE__), "..", "classes", "all_classes.rb")

count = 0
text = ""
words_as_numbers = Array.new
triangles = Array.new

file = File.new(File.join(File.dirname(__FILE__), "..", "text_files", "words_for_42.txt"))
file.each {|line| text = line}

text.gsub!("\"", "")
words = text.split(",")
words.each do |word|
  word_as_number = 0 # Could use a better name
  word.each_char do |c|
    word_as_number += c.to_s.to_place_in_alphabet
  end
  words_as_numbers << word_as_number
end

(1..30).each do |n|
  triangles << n.to_triangle
end

words_as_numbers.each do |num|
  if triangles.include?(num)
    count += 1
  end
end

puts "The Solution is: #{count}"
