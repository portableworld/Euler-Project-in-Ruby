require_relative '../classes/all_classes'

file = File.new(File.join(File.dirname(__FILE__), "..", "text_files", "words_for_42.txt"))
text = file.readline
file.close

text.gsub!("\"", "")
words = text.split(",")
words_as_numbers = words.collect do |word|
  word_as_number = 0 # Could use a better name
  word.each_char do |c|
    word_as_number += c.to_s.to_place_in_alphabet
  end
  word_as_number
end

triangles = (1..30).collect(&:to_triangle)
words_as_numbers.select! {|n| triangles.include? n}

puts "The Solution is: #{words_as_numbers.count}"
