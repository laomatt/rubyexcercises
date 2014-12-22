
# Write a function word_unscrambler that takes two inputs: a scrambled
# word and a dictionary of real words.  Your program must then output
# all words that our scrambled word can unscramble to.
#
# Hint: To see if a string `s1` is an anagram of `s2`, split both
# strings into arrays of letters. Sort the two arrays. If they are
# equal, then they are anagrams.
#
# Difficulty: 3/5

def word_unscrambler(str, dictionary)
  t=0
  output=[]
  word=[]
  while t<str.length
    word<<str[t]
    t+=1
  end 
  
  for gh in dictionary
    dict=[]
    y=0
    while y<gh.length
      dict<<gh[y]
      y+=1
    end
    
    if dict.sort == word.sort
      output<<gh
      
    end
    
  end
  
  
  
  
end

if __FILE__== $0
puts word_unscrambler("turn", ["numb", "turn", "runt", "nurt"])
end
