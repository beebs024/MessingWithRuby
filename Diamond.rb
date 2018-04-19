class Diamond
  input=gets.chomp
  numberOfLetters = 0
  for i in 'A'..input
    numberOfLetters+=1
  end
  space=1
  beginSpace = numberOfLetters-1
  puts " " * numberOfLetters + "A"
  for i in 'B'..input
    puts ' '*(beginSpace)+i+ ' ' * space + i
    space+=2
    beginSpace-=1
  end
  space-=4
  beginSpace+=2
  ('B'...input).reverse_each do |i|
    puts ' '*(beginSpace)+i+ ' ' * space + i
    space-=2
    beginSpace+=1
  end
  puts " " * numberOfLetters + "A"
end