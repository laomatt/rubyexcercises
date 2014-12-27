
# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"
# methodology. (http://en.wikipedia.org/wiki/Bubble_sort)
#
# Difficulty: 3/5

# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"
# methodology. (http://en.wikipedia.org/wiki/Bubble_sort)
#
# Difficulty: 3/5



def bubble_sort(arr)
order=false
while !order
  i=0
  while i<arr.length-1
    if arr[i]>arr[i+1]
      arr[i],arr[i+1] = arr[i+1],arr[i]
    end
    i+=1
  end
  order=true
  i=0
  while i<arr.length-1
    if arr[i]>arr[i+1]
      order=false
    end
    i+=1
  end

end
arr
end
