
def function(arg)
  name={"matt"=>"lao"}

  return name[arg]


end


def catshat

cats={}

n=1

#hash is initlized as all true for all cats having a hat
while n<=100
    cats[n]=true
    n+=1
end

i=2
while i<=100
    j=1
       while j<101
            if j%i == 0
                cats[j]=!cats[j]
            end
        j+=1
      end
    i+=1
end


cats.delete_if{|w|cats[w]==false}

cats.keys
end








if __FILE__ == $0

  puts function("matt")
puts catshat()

end