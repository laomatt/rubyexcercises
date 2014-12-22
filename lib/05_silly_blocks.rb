
#this reverse takes the input blog, (yield) and vereses each word
#but preserves the order of the words

def reverser

  arr=yield.split

  output=""

  for g in arr
    output<<g.reverse+" "
  end

output[output.length-1]=""

return output

end


def adder(num=1)
  return num+yield
end


def repeater(num=1)
  num.times do
    yield
  end
end

