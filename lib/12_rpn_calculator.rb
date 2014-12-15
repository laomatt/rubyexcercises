class RPNCalculator
  #my constructor, constructs an array called sum which dynamically holds our numbers
  def initialize
    @sum=[]
    @s=0
    @i=1
  end
  
  #my push method, for growing the sum array
  def push(n=0)
    m=Float(n)
    @sum<<m
  end
  
  #these are my methods for all the operations
  def plus
    if @sum.length>1
    @s=0
    @s+=@sum[@sum.length-1]
    @sum.delete_at(@sum.length-1)
    
    @s+=@sum[@sum.length-1]
    @sum.delete_at(@sum.length-1)    
    @sum<<@s
    else
      raise "calculator is empty"
    end
  end
  
  
  def minus
    
    if @sum.length>1
    @s=@sum[@sum.length-2]
    @sum.delete_at(@sum.length-2)
     
    @s-=@sum[@sum.length-1]
    @sum.delete_at(@sum.length-1)
    @sum<<@s
    else
      raise "calculator is empty"
    end
    
  end
  
  def times
    if @sum.length>1

    @s=@sum[@sum.length-2]
    @sum.delete_at(@sum.length-2)
     
    @s*=@sum[@sum.length-1]
    @sum.delete_at(@sum.length-1)
    @sum<<@s
    else
      raise "calculator is empty"
    end
  end
  
  
  def divide
    if @sum.length>1
    @s=@sum[@sum.length-2]
    @sum.delete_at(@sum.length-2)
     
    @s/=@sum[@sum.length-1]
    @sum.delete_at(@sum.length-1)
    @sum<<@s
    
    else
      raise "calculator is empty"
    end
  end
  
 
 #my tokenizer
 
  def tokens(str)
    array=str.split
    output=[]
    nums=["1","2","3","4","5","6","7","8","9","0"] 
    opts=["+","-","*","/"]
    #inspects and makes the appropriate conversion
    #then adds it to the output array
    for g in array
      if nums.include?(g)
        output<<Integer(g)
      else
        output<<g.to_sym
      end
    end
    output
  end
  
  #my evaluate method
  
  def evaluate(str)
      #first we split the string into an array
    array=str.split
    ints=["1","2","3","4","5","6","7","8","9","0"]
      #then we evaluate each element in the array based on what it is
    for i in array
       if ints.include?(i)
        push(Integer(i))
        else
           if i.include?("+")
             plus
           elsif i.include?("-")
             minus
           elsif i.include?("*")
             times
           elsif i.include?("/")
             divide
           end
        end
      end
      #then we output the value method
     value  
  end
  
  #we output the s variable which is the result of the last operation performed
  
  def value
    @s
    
  end
  
end
