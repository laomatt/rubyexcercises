
class Array
  

  def sum
    s=0
    for i in self
      s+=i
    end
    s
  end
  
  def square
    output=[]
    for i in self
      output<<i*i
    end
    output
  end
  
  
  #this method imidiatley replaces each element in the array
  def square!
    r=0
    for i in self
     self[r]=i*i
     r+=1 
    end
  end
     
    
  
end



