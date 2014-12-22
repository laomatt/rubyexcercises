def word_unscrambler(str, words)
output=[]
word=[]
j=0
while j<str.length
  word<<str[j]
  j+=1
end

for w in words
  i=0
  temp=[]
  while i<w.length
    temp<<w[i]
    i+=1
  end
    
  if  temp.sort == word.sort
    output<<w
  end
end

output
  
end
