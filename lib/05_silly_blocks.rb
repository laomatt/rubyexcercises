def reverser
#break sentence up into an array of words
str=yield
array=str.split
output=""

  for word in array
    #for each word reverse it and add it to output
    output+=word.reverse+" "
  end

output[output.length-1]=""
output
 
end

#using a default parameter of 1 we add it to the default block statment
def adder(n=1)
  yield+n
end

#using a default param and a loop
def repeater(n=1)
  n.times do 
    yield
  end
end

