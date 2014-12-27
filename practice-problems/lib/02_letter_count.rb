def letter_count(str)
Hash[str.chars.zip(str.chars.map{ |e| str.chars.inject(0) { |sum, r| r==e ? sum+=1: sum+=0}}.map {|f| f}).sort_by{|k,v|k}.delete_if{|k,v| k==" "}]
end