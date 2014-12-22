# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
#
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.
#
# Difficulty: 2/5

def ordered_vowel_word?(word)
  vowels={"a"=>1, "e"=>2, "i"=>3, "o"=>4, "u"=>5}
  vow =["a","e","i","o","u"]
  temp=[]
  ordered=true
  i=0
  while i<word.length
    temp<<word[i]
    i+=1
  end
  
  vowword=[]
  for h in temp
    if vow.member?(h)
      vowword<<h
    end
  end
  g=0
  while g<vowword.length-1
    if vowels[vowword[g]]>vowels[vowword[g+1]]
      ordered=false
      break
    end
    g+=1
  end 
 return ordered 
end




def ordered_vowel_words(str)
  gho=str.split
  out=[]
  
  for df in gho
    if ordered_vowel_word?(df)
      out<<df
    end
  end
  
return out.to_s  
  
end



if __FILE__ == $0
#puts ordered_vowel_word?("hamie")  
puts ordered_vowel_words("this is a test of the vowel ordering system")
end