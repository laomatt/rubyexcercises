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
