class Bowling
=begin
  @frames = [[5,'/'],[5,'/'],[5,'/'],[5,'/'],[5,'/'],[5,'/'],[5,'/'],[5,'/'],[5,'/'],[5,'/', 5]] #should be 150
=end
=begin
  @frames = [['x'],[7,'/'],[9,0],['x'],[0,8],[8,'/'],[0,6],['x'],['x'],['x', 8, 1]] #should be 167
=end
=begin
  @frames = [['x'],[7,'/'],[7,2],[9, '/'],['x'],['x'],['x'],[2, 3],[6, '/'],[7, '/', 3]] #should be 168
=end
  @frames = [['x'],['x'],['x'],['x'],['x'],['x'],['x'],['x'],['x'],['x', 'x', 'x']] #should be 300
  score=0
  for i in 0...@frames.length
    if @frames[i][0]=='x' && i<=@frames.length-3
      if@frames[i+1][0] == 'x'
        if@frames[i+2][0]=='x'
          score+=30
        elsif i<=@frames.length-3
          score+=20+@frames[i+2][0]
        end
      elsif @frames[i+1][1]=='/'
        score +=20
      elsif @frames[i+1][1]!='/' && @frames[i+1][0] != 'x'
        score+=10+@frames[i+1][0]+@frames[i+1][1]
      end
    elsif @frames[i][1]=='/' && i<=@frames.length-2
      if @frames[i+1][0]=='x'
        score+=20
      else
        score+=10+@frames[i+1][0]
      end
    elsif i==@frames.length-1
      if @frames[i][1]=='/'
        if @frames[i][2]=='x'
          score+=20
        else
          score+=10+@frames[i][2]
        end
      elsif @frames[i][0]=='x'
        if @frames[i][1]=='x'
          if @frames[i][2]=='x'
            score+=30
          else
            score += 20+@frames[i][2]
          end
        elsif @frames[i][2]=='/'
          score+=20
        else
          score+=10+@frames[i][1]+@frames[i][2]
        end
      else
        score+= @frames[i][0]+@frames[i][1]
      end
    elsif @frames[i][0]!='x' && @frames[i][1] != '/'
      score+= @frames[i][0]+@frames[i][1]
    elsif @frames[i][0]=='x'&&i==8
      if @frames[i+1][0]=='x' && @frames[i+1][1]=='x'
        score += 30
      elsif @frames[i+1][0]=='x' && @frames[i+1][1]!='x'
        score += 20+@frames[i+1][1]
      elsif @frames[i+1][1]=='/'
        score += 20
      else
        score+= 10+@frames[i+1][0] + @frames[i+1][1]
      end
    end
    puts i+1, score
  end
end