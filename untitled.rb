



def subset(array, indexs, indexe)
  @arr=array
  @i=indexs
  @j=indexe
    outarr=[]
    f=@i
    while f<=@j
      outarr<<@arr[f]
      f+=1
    end
  outarr
end


yet=[1,2,3,0,0,0,0,0]


if __FILE__ == $0
  puts subset([1,2,3,6,7,32,4,789,2,76,39], 2,5)
  #puts yet
end