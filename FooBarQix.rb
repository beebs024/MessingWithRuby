class Foobarqix
  puts 'Please enter a number'
  val = gets.chomp()
  intVal=val.to_i
  output = ''
  if intVal%3 == 0
    output += 'Foo'
  end
  if intVal%5 == 0
    output +='Bar'
  end
  if intVal%7==0
    output +='Qix'
  end
  for i in 0...val.length() do
    if val[i]=='3'
      output+='Foo'
    elsif val[i]=='5'
      output+='Bar'
    elsif val[i]=='7'
      output+='Qix'
    elsif val[i]=='0'
      output+='*'
    end
  end
  puts output
end