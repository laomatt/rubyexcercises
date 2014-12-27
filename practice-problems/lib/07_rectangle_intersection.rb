def rec_intersection(rect1, rect2)

  output=[]
  coordinate1=[]
  coordinate2=[]
 
    coordinate1[0]=[rect1[0][0],rect2[0][0]].max
    coordinate2[0]=[rect1[1][0],rect2[1][0]].min
    coordinate1[1]=[rect1[0][1],rect2[0][1]].max
    coordinate2[1]=[rect1[1][1],rect1[1][1]].min

  output<<coordinate1
  output<<coordinate2
  
  
  
  if rect1[1][0]<rect2[0][0] || rect1[1][1]<rect2[0][1]
    output = nil
  end
  
  
   output



end
