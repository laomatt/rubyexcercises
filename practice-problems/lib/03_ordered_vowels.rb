def ordered_vowel_words(str)
vowels={"a"=>1,"e"=>2,"i"=>3,"o"=>4,"u"=>5}

##########solution using map
#str.split.map { |e| (e.chars.map { |e| vowels.include?(e)? vowels[e]: 'b' }.delete_if{|e| e=='b'} == e.chars.map { |e| vowels.include?(e)? vowels[e]: 'b' }.delete_if{|e| e=='b'}.sort)? e : 'd' }.delete_if{|e| e=='d'}.join(" ")

######solution using partition
str.split.partition { |e| e.chars.partition { |v| vowels.keys.include?(v)}[0].map { |e| vowels[e] } == e.chars.partition { |v| vowels.keys.include?(v)}[0].map { |e| vowels[e] }.sort}[0].join(" ")
end

