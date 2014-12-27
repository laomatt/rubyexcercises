def ordered_vowel_words(str)
  sen=str.split
vowels={"a"=>1,"e"=>2,"i"=>3,"o"=>4,"u"=>5}
output=""
for word in sen
  vword=""
  y=0
  while y<word.length
    if vowels.keys.include?word[y]
      vword<<word[y]
    end
    y+=1
  end
  order=true
  w=0
  while w<vword.length-1
    if vowels[vword[w]]>vowels[vword[w+1]]
      order=false
      break
    end
    w+=1
  end
  if order
    output<<word+" "
  end
end
if output.length>0
  output[output.length-1]=""
end
output
end

#instructions
# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
#
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.
#
# Difficulty: 2/5

#enum solution
#################

def ordered_vowel_words(str)
str.split.map { |e| ordered_vowel_word?(e)? e : 'd' }.delete_if{|e| e=='d'}.join(" ")
end
def ordered_vowel_word?(str)
vowels={"a"=>1,"e"=>2,"i"=>3,"o"=>4,"u"=>5}
str.chars.map { |e| vowels.include?(e)? vowels[e]: 'b' }.delete_if{|e| e=='b'} == str.chars.map { |e| vowels.include?(e)? vowels[e]: 'b' }.delete_if{|e| e=='b'}.sort
end
