# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j]`.
#
# In case of ties (see example below), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.
#
# Difficulty: 2/5

def nearest_larger(arr, i) 
    y=1
    while y<arr.length
      if arr[i-y]>arr[i]
        j=i-y
        break
      elsif arr[i+y]>arr[i]
        j=i+y
        break
      else
        y+=1
       end
    end
    
 return j
end

if __FILE__ == $0
puts nearest_larger([2,3,4,8], 2) ==3
puts nearest_larger([2,6,4,8], 2)
  

 
   # nearest_larger([2,6,4,6], 2)
  

 
   # nearest_larger([8,2,4,3], 2)
 

  
   # nearest_larger([2,4,3,8], 1)
  

 
   # nearest_larger( [2, 6, 4, 8], 3)
  
  
end
