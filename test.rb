def blo
  yield
  puts "this is"
  yield
end

def add(n, m)
  return n+m
end

#if __FILE__ == $0


#describe "out function" do
  n=0
  blo do
    n+=1
  puts n

  end


  Test.assert_equals(add(1,2),3)

#end

