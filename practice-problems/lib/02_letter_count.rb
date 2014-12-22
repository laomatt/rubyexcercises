def letter_count(str)
output={}
output2={}

  r=0
  while r<str.length
    tally=0
    t=0
    while t<str.length
      if str[r]==str[t]
        tally+=1
      end
      t+=1
    end
    if str[r] !=" "
    output[str[r]]=tally
    end
    r+=1
  end
  
  
for x in output.keys.sort
  output2[x]=output[x]
end

output2
  
end
