

def ordered_word?(str)
  order=true
  hash={}
  hash["a"]=1
  hash["b"]=2
  hash["c"]=3
  hash["d"]=4
  hash["e"]=5
  hash["f"]=6
  hash["g"]=7
  hash["h"]=8
  hash["i"]=9
  hash["j"]=10
  hash["k"]=11
  hash["l"]=12
  hash["m"]=13
  hash["n"]=14
  hash["o"]=15
  hash["p"]=16
  hash["q"]=17
  hash["r"]=18
  hash["s"]=19
  hash["t"]=20
  hash["u"]=21
  hash["v"]=22
  hash["w"]=23
  hash["x"]=24
  hash["y"]=25
  hash["z"]=26
  t=0
  
  while t<str.length-1
    
    if hash[str[t]]>hash[str[t+1]]
      order=false
      break
    end
    
    t+=1
  end
    return order
  
end


def encrypt(str)
  
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
  
  output=[]
  output2=[]
  
  r=0
  while r<str.length
  
      tmp=[]
      tmp<<str[r]
      tmp<<hash[str[r]]
      output<<tmp
  
     r+=1
  end 
 w=1
 output2<<output[0] 
  while w<output.length
    if !(output[w]==output[w-1])
      output2<<output[w]
    end
    w+=1
  end
  
  return output2
  
end




def one_off_words(str, word_list)
  word=[]
  t=0
  while t<str.length
    word<<str[t]
    t+=1
  end
  output=[]
  for te in word_list
    r=0
    temp=[]
    while r<te.length
      temp<<te[r]
      r+=1
    end
    
    if temp.length == word.length
      h=0
      w=0
      while h<word.length
        if word[h] == temp[h]
          w+=1
        end
        h+=1
      end
      if w == word.length-1
        output<<te
      end
    end
  end 
 return output
    
end


if __FILE__== $0
  
puts ordered_word?("sabc")

puts encrypt("aaaaabbbaaa")
puts one_off_words("moor", ["door", "moot", "boot", "boots"])
end
