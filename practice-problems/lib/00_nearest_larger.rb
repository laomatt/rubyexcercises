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