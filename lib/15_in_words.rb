class Fixnum
  def in_words
    #the first 20 numbers are explicitly defined due to there being so many exceptions to the words
    if self == 0 
      'zero'
    elsif self == 1
      'one'
    elsif self == 2
      'two'
    elsif self == 3
      'three'  
    elsif self == 4
      'four'
    elsif self == 5
      'five'
    elsif self == 6
      'six'
    elsif self == 7
      'seven'
    elsif self == 8
      'eight'
    elsif self == 9
      'nine'
    elsif self == 10
      'ten'
    elsif self == 11
      'eleven'
    elsif self == 12
      'twelve'
    elsif self == 13
      'thirteen'
    elsif self == 14
      'fourteen'  
    elsif self == 15
      'fifteen'
    elsif self == 16
      'sixteen' 
    elsif self == 17
      'seventeen' 
    elsif self ==18
      'eighteen'
    elsif self ==19
      'nineteen'
    #tens
    elsif self ==20
      'twenty'
    elsif self ==30
      'thirty'
    elsif self ==40
      'forty'
    elsif self ==50
      'fifty'
    elsif self ==60
      'sixty'
    elsif self ==70
      'seventy'
    elsif self ==80
      'eighty'
    elsif self ==90
      'ninety'
      
 

  #vaiours numbers <100 we use recursion
    elsif self<100
     "#{(Integer(self.to_s[0])*10).in_words} #{Integer(self.to_s[1]).in_words}"  
 
        
 #for everything else we use more recursion
         
     else
       group1=""
       group2=""  
        str=self.to_s
          n=str.length 
         #have have to make special exceptions in the number system for our front numbers 
         #(the number right before the markers word)
         #this is how i divide the number up over and over again into managable chunks that can be 
         #ran through the method again via recursion
          if n>3
            if n%3==0
              mark=3
            else
            mark=n%3
            end
          else
            mark=1
          end
          
      #populating each group string with numbers of the integer given, to be divided at the mark index
            g=0
            while g < n
              if g < mark
                
                group1+=str[g]
                
              else
                
                group2+=str[g]
                
              end
             g+=1
             end 
        
        #sum up group2
            r=0
            sum=0
            while r<group2.length
              sum+=Integer(group2[r])
              r+=1
            end  
            
          keyword=["one","ten","hundred","thousand","thousand","thousand","million","million","million","billion","billion","billion","trillion","trillion","trillion"]
      #checking to see if there are any out of place 0's or a chunk made of nothing but zeros
             if !(sum==0)
              if group2[0]=="0"
                group2.slice!("0")
              end
              "#{Integer(group1).in_words} #{keyword[n-1]} #{Integer(group2).in_words}"
             else          
              "#{Integer(group1).in_words} #{keyword[n-1]}"
             end   
      end        
    end
   
  end
  
  
  
  
  
  
  
  
