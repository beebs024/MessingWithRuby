gem 'to_words'
require 'to_words'
class NumToWords
  puts "Please enter a money amount to convert to words"
  val=gets.chomp
  valToConvert=val.to_i
  puts "#{valToConvert.to_words} dollars"
end