class Temperature
def initialize(hash)
  @far=hash[:f]
  @cel=hash[:c]
end

def self.from_fahrenheit(num)
  self.new(:f=>num)
end

def self.from_celsius(num)
  self.new(:c=>num)
end

def in_fahrenheit
  if @cel != nil
    @far= (@cel*9)/5+32
  end

  return @far
end

def in_celsius
  if @far != nil
    @cel = ((@far - 32)*5)/9
  end

return @cel
end
end


class Celsius < Temperature

def initialize(num)
  @cel=num
end

end

class Fahrenheit < Temperature

def initialize(num)
  @far=num
end

end

