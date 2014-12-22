
# Build a function, `morse_encode(str)` that takes in a string (no
# numbers or punctuation) and outputs the morse code for it. See
# http://en.wikipedia.org/wiki/Morse_code. Put two spaces between
# words and one space between letters.
#
# You'll have to type in morse code: I'd use a hash to map letters to
# codes. Don't worry about numbers.
#
# I wrote a helper method `morse_encode_word(word)` that handled a
# single word.
#
# Difficulty: 2/5

def morse_encode(str)
  hash={}
  
  hash["a"]="._ "
  hash["b"]="_... "
  hash["c"]="_._. "
  hash["d"]="_.. "
  hash["e"]=". "
  hash["f"]=".._. "
  hash["g"]="__. "
  hash["h"]=".... "
  hash["i"]=".. "
  hash["j"]=".___ "
  hash["k"]="_._ "
  hash["l"]="._.. "
  hash["m"]="__ "
  hash["n"]="_. "
  hash["o"]="___ "
  hash["p"]=".__. "
  hash["q"]="__._ "
  hash["r"]="._. "
  hash["s"]="... "
  hash["t"]="_ "
  hash["u"]=".._ "
  hash["v"]="..._ "
  hash["w"]=".__ "
  hash["x"]="_.._ "
  hash["y"]="_.__ "
  hash["z"]="__.. "
  
  hash[" "]="  "
  
  hash["A"]="._ "
  hash["B"]="_... "
  hash["C"]="_._. "
  hash["D"]="_.. "
  hash["E"]=". "
  hash["F"]=".._. "
  hash["G"]="__. "
  hash["H"]=".... "
  hash["I"]=".. "
  hash["J"]=".___ "
  hash["K"]="_._ "
  hash["L"]="._.. "
  hash["M"]="__ "
  hash["N"]="_. "
  hash["O"]="___ "
  hash["P"]=".__. "
  hash["Q"]="__._ "
  hash["R"]="._. "
  hash["S"]="... "
  hash["T"]="_ "
  hash["U"]=".._ "
  hash["V"]="..._ "
  hash["W"]=".__ "
  hash["X"]="_.._ "
  hash["Y"]="_.__ "
  hash["Z"]="__.. "
  
  output=""
  f=0
  while f<str.length
    output+=hash[str[f]]
    f+=1
  end
  
  
  return output
  
  
end

if __FILE__== $0
  puts morse_encode("cat in hat")
end
