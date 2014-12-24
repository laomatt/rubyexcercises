def echo(ste)
  ste
end

def shout(str)
  str.upcase
end

def repeat(str, num=2)
  (0...num).map { |e| "#{str+" "}" }.join.rstrip
end

def start_of_word(str, num)
  (0...num).map { |e| "#{str[e]}"  }.join.rstrip
end

def first_word(sen)
  sen.split[0]
end

def titleize(str)
#       problem area        ##       problem area        #
str.split.map { |e| "#{e.capitalize+" "}"  }.join.rstrip
#       problem area        ##       problem area        #
end