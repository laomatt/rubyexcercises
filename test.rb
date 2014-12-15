class Foo
  def foo=(x)
    puts "X=#{x}"
  end
end

if __FILE__ == $0
  
Foo.new.foo=123  
end