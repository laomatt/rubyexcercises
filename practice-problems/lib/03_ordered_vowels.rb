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
