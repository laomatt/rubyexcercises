
# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
#
# Difficulty: 1/5
def repeats?(year)
  g=year.to_s 
  
  temp=[]
  f=0
  while f<g.length
    temp<<g[f]
    f+=1
  end
  
  repeat = false
  r=0
  while r<temp.length
    e=0
    while e<temp.length
      if temp[r]==temp[e] && !(r==e)
        repeat = true
      end
      e+=1
    end
    r+=1
  end
  return repeat
end


 
 
def no_repeats(year_start, year_end)
  yarray=[]
  year = year_start
  while year<year_end+1
    yarray<<year
    year+=1
  end
  output=[]
  for yet in yarray
    if !(repeats?(yet))
      output<<yet
    end
  end
  return output
end
 

if __FILE__ == $0
  
 puts repeats?(2000)
  puts no_repeats(1980, 2014)
end