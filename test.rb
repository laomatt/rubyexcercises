def blo
  yield
  puts "this is"
  yield
end


#if __FILE__ == $0


#describe "out function" do
  n=0
  blo do
    n+=1
    puts n

  end

#end

