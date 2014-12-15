class Temperature


  #constructor for my options hash
  def initialize(hash)
    @far=hash[:f]
    @cel=hash[:c]
  end

  def self.from_celsius(num)
    self.new(:c=>num)
  end

  def self.from_fahrenheit(num)
    self.new(:f=>num)
  end

  def in_fahrenheit

    if(@cel!=nil)
      @far=@cel*(9.0/5.0)+32
    end
    @far
  end


  def in_celsius
    if(@far!=nil)
      @cel=(@far-32)*(5.0/9.0)
    end

    @cel

  end
end


class Celsius < Temperature
  def initialize(n)
    @cel=n
  end
end

class Fahrenheit < Temperature
  def initialize(n)
    @far=n
  end
end


