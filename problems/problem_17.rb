require File.join(File.dirname(__FILE__), "..", "classes", "all_classes.rb")

count = 0

(1..999).each do |num|
  word = num.to_words
  count += word.gsub(" ", "").length
end

count += 11 # "one thousand"

puts count