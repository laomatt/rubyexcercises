############################################################################################################

##various methods used in hash, and you can use them in order as shown

def list_in_range(hash, range)
  hash
    #select the key k and value v only if the 'range' includes the value v.
    .select { |k, v| range.include?(v) }
    #sort the resulting hash by values
    .sort_by { |k, v| v }
    #map the keys k, and values v to a string array
    .map { |k, v| "#{k} (#{v})" }
    #then join all the strings in that array with a ',' delimeter inbetween elements.
    .join(", ")
end

############################################################################################################

#you can use the excape char #{} to insert ruby code into the braces and have it execute.  in this case the 'cc' is the variable to check, print out which ever one works...
#this particular code uses a .map method, the cc is the variable to be used to do something.

def capital(capitals_hash_array)
  capitals_hash_array.map {|cc| "The capital of #{cc[:state] || cc['state'] || cc[:country] || cc['country']} is #{cc[:capital] || cc['capital']}"}
end


############################################################################################################

variable length arguments in ruby
def function(*args)
#args is passed as an array of arguments.
)


############################################################################################################

##short cut to map from 0 to a max (size)
# [some array].map{|variable| do something with that variable}

#.. - to include the maxsize number
#...- to not include the maz number

# Checkerboard method
def checkerboard(size)
  (0...size).map { |i|
    (0...size).map { |j| "[#{'rb'[(i + j) % 2]}]" }.join('') + "\n"
  }.join ''
end


############################################################################################################

#this lamba takes two variables, sum and c, and iterates it over the coords array.  the inject method applies all elements of the array, starting at the index inside the (), by the given method in the lambda, in this case its sum += c**2
def in_sphere?(coords, radius)
  #this statement result in either true or false, thus no need for return statments or if-else statments, because this will automatically return
  coords.inject(0){|sum, c| sum += c**2 } <= radius**2
end

############################################################################################################

#if its an odd numbered length string, we add a _ to it to make it an even numbered length string
#use .scan to cycle through letters
#.scan scans each letter in the string, every two lets '..'
def solution(str)
  if (str.length % 2) == 1
    str << "_"
  end
  str.scan(/../)
end

other hander methods
size.even?
is_a?

#########################################################################################################

#A Narcissistic Number is a number which is the sum of its own digits, each raised to the power of the number of digits.

For example, take 153 (3 digits):

    1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
and 1634 (4 digits):

    1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634
The Challenge:

Your code must return true or false depending upon whether the given number is a Narcissistic number.

Error checking for text strings or other invalid inputs is not required, only valid integers will be passed.



#my solution:
value.to_s.chars.map {|e| e.to_i**value.to_s.length}.inject {|sum, i|sum+=i}==value

################################################################################################################################
make a hash
given two arrays, keys and values

Hash[keys.zip(values)]

Hash["a", 100, "b", 200]             #=> {"a"=>100, "b"=>200}
Hash[ [ ["a", 100], ["b", 200] ] ]   #=> {"a"=>100, "b"=>200}
Hash["a" => 100, "b" => 200]         #=> {"a"=>100, "b"=>200}

################################################################################################################################
