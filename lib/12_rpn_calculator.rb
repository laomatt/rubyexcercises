class RPNCalculator
def initialize
@pool=[]
end

def push(n)
@pool<<n
end

def plus
@val=@pool[@pool.length-2]+@pool[@pool.length-1]
@pool=@pool.reverse.drop(2).reverse << @val
end

def minus
@val=@pool[0]-@pool[1]
@pool.drop(2).reverse << @val
end

def value
@val
end

end