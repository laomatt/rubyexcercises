class Dictionary

def initialize
  @ent={}
end


#adds entries
def add(hash)
  if(hash.is_a?(Hash))
    @ent[hash.keys[0]]=hash.values[0]
  else
    @ent[hash]=nil
  end
end

##############
def keywords
  @ent.keys
end


##############includes a word?
def include?(str)
out=false
  for w in @ent.keys
    if w==str
      out=true
      break
    end
  end
out
end

def find(str)
  output={}
  for y in @ent.keys
    if y.include?(str)
        output[y]=@ent[y]
    end
  end
  output
end



#displays entries
def entries
  @ent
end

def keywords
   @ent.keys.sort
end

def printable

end

end