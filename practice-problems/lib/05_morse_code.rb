def morse_encode(str)
  morse={}
  morse["a"]=".-"
  morse["b"]="-..."
  morse["c"]="-.-."
  morse["d"]="-.."
  morse["e"]="."
  morse["f"]="..-."
  morse["g"]="--."
  morse["h"]="...."
  morse["i"]=".."
  morse["j"]=".---"
  morse["k"]="-.-"
  morse["l"]=".-.."
  morse["m"]="--"
  morse["n"]="-."
  morse["o"]="---"
  morse["p"]=".--."
  morse["q"]="--.-"
  morse["r"]=".-."
  morse["s"]="..."
  morse["t"]="-"
  morse["u"]="..-"
  morse["v"]="...-"
  morse["w"]=".--"
  morse["x"]="-..-"
  morse["y"]="-.--"
  morse["z"]="--.."
  
  morse[" "]=""
  
  morse["A"]=".-"
  morse["B"]="-..."
  morse["C"]="-.-."
  morse["D"]="-.."
  morse["E"]="."
  morse["F"]="..-."
  morse["G"]="--."
  morse["H"]="...."
  morse["I"]=".."
  morse["J"]=".---"
  morse["K"]="-.-"
  morse["L"]=".-.."
  morse["M"]="--"
  morse["N"]="-."
  morse["O"]="---"
  morse["P"]=".--."
  morse["Q"]="--.-"
  morse["R"]=".-."
  morse["S"]="..."
  morse["T"]="-"
  morse["U"]="..-"
  morse["V"]="...-"
  morse["W"]=".--"
  morse["X"]="-..-"
  morse["Y"]="-.--"
  morse["Z"]="--.."
  
  output=""
  i=0
  while i<str.length
    if i != str.length-1
      output<<morse[str[i]]+" "
    else
      output<<morse[str[i]]
    end
    
    i+=1
  end
  
  output
end