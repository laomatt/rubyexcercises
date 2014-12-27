def no_repeats(year_start, year_end)
  years=[]
  i=year_start
  while i<=year_end
    years<<i
    i+=1
  end
  years.delete_if{|y|repeats?(y)}
end
def repeats?(year)
  out=false
  i=0
  while i<year.to_s.length
    j=0
    while j<year.to_s.length
      if year.to_s[i]==year.to_s[j] && i!=j
        out=true
        break
      end
      j+=1
    end
    i+=1
  end
  out
end


##enum solution

def no_repeats(ys, ye)
(ys..ye).map { |e| no_repeat?(e)? e : 'd' }.delete_if {|e| e=='d'}
end
def no_repeat?(yr)
 !(yr.to_s.chars.group_by{|i| i}.values.any? {|e| e.length>1})
end

#instructions

# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
#
# Difficulty: 1/5



