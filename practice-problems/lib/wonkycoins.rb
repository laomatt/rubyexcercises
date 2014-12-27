
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
  purse=[]
  purse<<n
  loop do
    for coin in purse
      if coin != 0
        purse<<coin/2
        purse<<coin/3
        purse<<coin/4
        purse.delete_at(purse.find_index(coin))
      end
    end
    sum=0
    for r in purse
      sum+=r
    end
   break if sum==0
  end
  purse.length
end