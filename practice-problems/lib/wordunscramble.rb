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


# Write a function word_unscrambler that takes two inputs: a scrambled
# word and a dictionary of real words.  Your program must then output
# all words that our scrambled word can unscramble to.
#
# Hint: To see if a string `s1` is an anagram of `s2`, split both
# strings into arrays of letters. Sort the two arrays. If they are
# equal, then they are anagrams.
#
# Difficulty: 3/5
