class CharacterSort
  puts gets.chomp.scan(/[a-zA-Z]{1}/).map(&:downcase).sort.join
end