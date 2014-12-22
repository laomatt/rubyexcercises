
class Sample
  def initialize(array, indexs, indexe)
 @arr=array
  @i=indexs
  @j=indexe
  end


def subset
    outarr=[]
    f=@i
    while f<=@j
      outarr<<@arr[f]
      f+=1
    end
  outarr
end

end

if __FILE__ == $0

  sampob=Sample.new([1,2,3,6,7,32,4,789,2,76,39], 2,5)
  puts sampob.subset
  #puts yet
end