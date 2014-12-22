# Catsylvanian money is a strange thing: they have a coin for every
# denomination (including zero!). A wonky change machine in
# Catsylvania takes any coin of value N and returns 3 new coins,
# valued at N/2, N/3 and N/4 (rounding down).
#
# Write a method `wonky_coins(n)` that returns the number of coins you
# are left with if you take all non-zero coins and keep feeding them
# back into the machine until you are left with only zero-value coins.
#
# Difficulty: 3/5


def wonky_coins(n)
  array=[n]
 
  val = true
  while val == true
    for g in array
      if !(g==0)
        array.delete_at(array.find_index(g))
        array<<g/2
        array<<g/3
        array<<g/4
      end
    end
      
    
    
    
    val=false
    for g in array
      if !(g==0)
        val=true
        break
      end
    end
    
  end
  
  return array.length
end

if __FILE__== $0
  
  puts wonky_coins(5)
end
  
  
