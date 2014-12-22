class Dictionary
  def initialize
    @dict={}
  end

  def add(ent)
    @dict[ent.keys[0]]=ent.values[0]
  end

  def keywords

  end

  def entries
     @dict
  end


end