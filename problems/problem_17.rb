require_relative '../classes/all_classes'

count = 0

(1..999).each do |num|
  word = num.to_words
  count += word.gsub(" ", "").length
end

count += 11 # "one thousand"

puts count