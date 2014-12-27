def no_repeats(ys, ye)
(ys..ye).map { |e|  !(e.to_s.chars.group_by{|i| i}.values.any? {|e| e.length>1})? e : 'd' }.delete_if {|e| e=='d'}
end