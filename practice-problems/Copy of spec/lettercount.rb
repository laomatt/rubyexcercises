# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.
#
# Difficulty: 1/5


def letter_count(str)
  hash={}
  temp=[]
  i=0
  while i<str.length
    temp<<str[i]
    i+=1
  end
  
  values=[]
  
  for y in temp
    d=0
    for g in temp
      if y==g
        d+=1
      end
    end
    values<<d
  end
  
  for d in temp
    if !(d==" ")
    hash[d]=values[temp.find_index(d)]
    end
  end
  
  return hash
  
end


if __FILE__ == $0
puts letter_count("cats are fun")
end