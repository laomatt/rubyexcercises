
# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.
#
# Difficulty: 1/5


# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.
#
# Difficulty: 1/5

def letter_count(str)
hash={}
  str.chars.map { |e| str.chars.inject(0) { |sum,r| r==e ? sum+=1: sum+=0  } hash[e]=sum }
hash
end