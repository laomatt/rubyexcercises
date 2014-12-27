def word_unscrambler(str, words)
words.map { |e| (e.chars.sort.join == str.chars.sort.join)? e : 'd' }.delete_if {|e| e=='d'}
end