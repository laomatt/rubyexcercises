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