class Timer
  #initialization method
  def seconds
    @sec=0
    
   @sec
  end
  #my setter method
  def seconds=(arg)
    @sec = arg 
  end
  
  #my method to produce the time string
  def time_string
    #modular arithmetic to get each numb of hours and mins
    secs=@sec%60
    min=(@sec/60)%60
    hour=@sec/3600
    
    #string formatting
   "%02d:" %[hour] +"%02d:" %[min] +"%02d" %[secs]
  
  end
end