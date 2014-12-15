def add(num1,num2)
  num1+num2
end

def subtract(num1,num2)
  num1-num2
end

def sum(array)
  sum=0
  for d in array
    sum+=d
  end
  sum
end


def multiply(array)
  
  while array.length>1
      sum=0
     array[0].times do
       sum+=array[1]
     end
     array.delete_at(0)
     array.delete_at(0)
     array<<sum
   end
   
   array[0]
end


def power(base, ex)
  #make a place holder for base, that accumulates in products
  newbase=base
  (ex-1).times do
   newbase=newbase*base     
  end
  newbase
end

def factorial(n)
  r=1
  #first we create an array, temp, out of the numbers from 1 to n
  temp=[]
  while r<=n
    temp<<r
    r+=1
  end
  #now we interate through the temp loop and multiply the output variable by each element
  out=0
  if temp.length>0
    out=1
    for t in temp
      out=out*t
    end
  end
  out
end
