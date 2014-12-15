def translate(str)
  arr=str.split
  vowels=["a","e","i","o","u"]
  out=""
  for word in arr
    #here we test for all cases begining with three constants (inlcuding _qu where _ is any constanant, and sch)
    if (!(vowels.include?(word[0])) && !(vowels.include?(word[1])) && !(vowels.include?(word[2]))) || (!(vowels.include?(word[0])) &&word[1]=="q" && word[2]=="u")
       g=3  
      while g<word.length        
        out+=word[g]
        g+=1
      end
      out+=word[0]+word[1]+word[2]+"ay "
    #here we test for all cases begining with two constants (inlcuding qu where )
    elsif (!(vowels.include?(word[0])) && !(vowels.include?(word[1]))) || (word[0]=="q" && word[1]=="u")
       g=2  
      while g<word.length        
        out+=word[g]
        g+=1
      end
      out+=word[0]+word[1]+"ay "
      
    #here we test for all cases begining with one constant
    elsif !(vowels.include?(word[0]))
      g=1  
      while g<word.length        
        out+=word[g]
        g+=1
      end
      out+=word[0]+"ay "
     #here we test for all cases begining with anything else (namely vowels)
     else
       g=0
       while g<word.length
         out+=word[g]
         g+=1
       end
       out+="ay "
   end
    
  end
      #now we shave the last space character off
  out[out.length-1]=""
  out
  
end
