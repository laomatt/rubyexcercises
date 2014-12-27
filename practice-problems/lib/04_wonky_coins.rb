def wonky_coins(n)
purse=[n]
while purse.any? {|e| e != 0}
  purse=purse.map { |e| e != 0? e/2: e }.concat purse.delete_if {|e| e==0 }.map { |e| e != 0? e/3: e }.concat purse.delete_if {|e| e==0 }.map { |e| e != 0? e/4: e }
end
purse.length
end