#to do this i used the time subtraction algorith in each iteration
#of the loop then added them to a cumulative sum total
#then devided my the number of iterations
#if there is no agument, n defaults to 1
def measure(n=1)
  totalTime=0
  n.times do 
    start = Time.now
    yield
   totalTime += Time.now-start
  end
  totalTime/n
end


