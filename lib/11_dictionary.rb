class Dictionary
  def initialize
    @dict={}
  end
###############
  def add(hash)
    if hash.is_a? Hash
      @dict[hash.keys[0]]=hash.values[0]
    else
      @dict[hash]=nil
    end
  end

###############
  def include?(str)
      for g in @dict.keys
        if str==g
          return true
          break
        end
      end
     return false
  end


###############
  def keywords
    @dict.keys.sort
  end

###############
  def find(str)
    output={}

    for g in @dict.keys
      if g.include?(str)
        output[g]=@dict[g]
      end

    end
return output
  end



end



###############
  def entries
     @dict
  end


end