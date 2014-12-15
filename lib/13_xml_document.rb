class XmlDocument
 
 #constructor
 
 def initialize(inden=nil) 
    @ind=inden
       @space=""
 end 
 
 

  
  
 #my hello method
 def hello(hash=nil, &block)
   #first we check that no block is given
   if !(block_given?)  
      #then we check for the existence of the argument hash
     if hash==nil
      "<hello/>"
      #if we have a hash
     else
       if @ind
         @space+"<hello name='#{hash[:name]}'/>\n"
         
       else
          "<hello name='#{hash[:name]}'/>"
        end
     end
     #if block is given
   else
       if @ind
         "<hello>\n#{yield}</hello>\n"
       else
       "<hello>#{yield}</hello>"
       end
    end
    
   
 end
 
 #my random tag name method
 def send(rname)
   "<#{rname}/>"
 end
 
 
 ####################nesting tags########################
 def goodbye(hash=nil)
    if !(block_given?)  
      #then we check for the existence of the argument hash
       if hash==nil
        "<goodbye/>"
        #if we have a hash
       else
         if @ind
          @space+"<goodbye name='#{hash[:name]}'/>\n"
         else
           "<goodbye name='#{hash[:name]}'/>"
         end
     end
     #if block is given
   else
     if @ind
       space="  "
        space+"<goodbye>\n#{yield}#{space}</goodbye>\n"
     else
       "<goodbye>#{yield}</goodbye>"
     end
     
   end
 end
 
 def come_back(hash=nil)
   if !(block_given?)  
      #then we check for the existence of the argument hash
       if hash==nil
        "<come_back/>"
        #if we have a hash
       else
         if @ind
           @space+"<come_back name='#{hash[:name]}'/>\n"
         else
            "<come_back name='#{hash[:name]}'/>"
          end
     end
     #if block is given
   else
     if @ind
       space="    "
    space+"<come_back>\n#{yield}#{space}</come_back>\n"
    else
    "<come_back>#{yield}</come_back>"
    end
   end
 end
 
 def ok_fine(hash=nil)
   if !(block_given?)  
      #then we check for the existence of the argument hash
       if hash==nil
        "<ok_fine/>"
        #if we have a hash
       else
         if @ind
           space="      "
           space+"<ok_fine be='#{hash[:be]}'/>\n"
         else
            "<ok_fine be='#{hash[:be]}'/>"
         end
      end
     #if block is given
   else
     if @ind
    @space+"#<ok_fine>\n#{yield}#{@space}</ok_fine>\n"
    else
    "<ok_fine>#{yield}</ok_fine>"
    end
    
   end
 end
 
 
end
