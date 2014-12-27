def make_change(amount)
Hash[:H => amount / 50 , :Q => amount % 50 / 25, :D => amount % 25 / 10, :N => amount % 10 / 5, :P => amount % 5].delete_if{ |k,v| v==0}
end

def filter(str)
  str.chars.partition {|e| "abcdef".include?(e.downcase)}.first.map { |e| e.downcase }

end

def count(str, c)
"there are #{str.chars.inject(0){|sum, e| e=='c'? sum+=1 : sum+=0}} instances of #{c} here"
end

#tally takes a string, str, and a group of letters, sel, (as a single string), and outputs a hash counting how many occurances of each letter in sel are in str.
def tally(str, sel)
  Hash[Hash[str.chars.map { |a| a.downcase  }.zip(str.chars.map { |e| e.downcase  }.map{ |e| str.chars.inject(0) {|sum, f| (f==e)? sum+=1 : sum+=0}})].sort_by {|k,v| k}].reject {|k,v| !sel.include?(k)}
end




#puts make_change(91)


str="If you specify a block, then for each element in enum the block is passed an accumulator value (memo) and the element. If you specify a symbol instead, then each element in the collection will be passed to the named method of memo. In either case, the result becomes the new value for memo. At the end of the iteration, the final value of memo is the return value for the method.

FAIR OAKS (CBS/AP) — Two vehicles collided head on in a fiery crash near Sacramento leaving four people dead and two more seriously injured.
The Sacramento Bee reports the crash happened about 1:30 a.m. Friday in Fair Oaks, which is northeast of Sacramento on the north bank of the American River.
A California Highway Patrol spokesman says a Buick LeSabre, carrying five passengers, caught fire, and three of the people inside were burned to death. It was fully engulfed in flames when authorities arrived on the scene.
Another passenger died instantly upon impact, and one was taken to a hospital in critical condition. Authorities said the driver of the other vehicle, a Subaru, suffered serious injuries and was taken to a hospital in stable condition.
The identities of those who died haven’t been released, pending notification of their families.
The CHP is investigating the cause of the crash.
“Everything was just tossed around. It’s very difficult for us to investigate,” CHP spokesman Officer Chad Hertzell said, adding that authorities will be conducting toxicology reports to determine whether alcohol or drugs were a factor.
Officers said it appears speed played a role. Also, some of the passengers in the Buick were not wearing seat belts, according to the CHP."

#puts filter(str)
#puts count(str, 'e')
puts tally(str, 'abd')
