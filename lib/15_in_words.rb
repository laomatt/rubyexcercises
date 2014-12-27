class Fixnum
def in_words
numbers={0=>'zero',1=>'one',2=>'two',3=>'three',4=>'four',5=>'five',6=>'six',7=>'seven',8=>'eight',9=>'nine',10=>'ten',11=>'eleven',12=>'twelve',13=>'thirteen',14=>'fourteen',15=>'fifteen',16=>'sixteen',17=>'seventeen',18=>'eighteen',19=>'nineteen',20=>'twenty',30=>'thirty',40=>'forty',50=>'fifty',60=>'sixty',70=>'seventy',80=>'eighty',90=>'ninety'}



quants={3=>"hundred", 4=>"thousand"}

if self.to_s.length<=2
  if numbers.include?(self)
    numbers[self]
  else
    numbers[(self.to_s[0]+"0").to_i]+" "+numbers[(self.to_s[1]).to_i]
    #(self.to_s.scan(/../).map {|e| numbers[e.to_i]} << numbers[self.to_s.chars[0].to_i]).join
  end
elsif self.to_s.length==3
  (self.to_s.chars.drop(1).join.scan(/../).map {|e| numbers[e.to_i]}.reverse << numbers[self.to_s.chars[0].to_i]).reverse.join(quants[self.to_s.length])
end

end

end