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

def nearest_larger(arr, idx)
out=nil
i=0
while i<arr.length
  if arr[idx]<arr[(idx-i)%arr.length]
    out=(idx-i)%arr.length
    break
  elsif arr[idx]<arr[(idx+i)%arr.length]
     out=(idx+i)%arr.length
     break
   else
     i+=1
  end
end
out
end
