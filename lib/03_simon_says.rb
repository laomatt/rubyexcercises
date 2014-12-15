#simple as just echoing back the argument
def echo(str)
  str
end


#my shout method, using the upcase method for strings
def shout(str)
  str.upcase
end


#my repeat method
#using a default parameter set at 2
def repeat(str, num=2)
  out=""
  num.times do
    out+=str+" "
  end
  
  #now we shave the last space character off
  out[out.length-1]=""
  out
end


#my start of word method
def start_of_word(str, n)
  out=""
  r=0
  while r<n
    out+=str[r]
    r+=1
  end
  out
end

#my first word method makes use of the string split method
#to tokenize the sentence then returns the first element of the resulting array
def first_word(str)
  array=str.split
  array[0]
end

def titleize(str)
  array=str.split
  out=""
  r=0
  for t in array
    #this garuntees that what ever the first word is will be capitalize
    if(r==0)
      out+=t.capitalize+" "  
    else
      #the only way to define little words to the program
      #is to explicity filter them out
      if (t=="the" || t=="over" || t=="and")
        out+=t+" "
      else
        out+=t.capitalize+" "
      end
    end
    r+=1
  end
    #now we shave the last space character off
  out[out.length-1]=""
  out
end




