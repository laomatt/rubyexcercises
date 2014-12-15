#reads millions


@keyword=["one","ten"," hundred"," thousand"," thousand"," thousand"," million"," million"," million"," billion"," billion"," billion"," trillion"," trillion"," trillion"]
   
      n=elsif self.to_s.length
        
          numb=self.to_s.split
          
          mark=self.to_s.length%3
          g=0
          while g<=self.to_s.length
            if g<=mark
              group1+=g
            else
              group2+=g
            end
            
            "#{Integer(group1).in_words}"+ @keyword[n-1]+"#{Integer(group2).in_words}"
            
            
          end
