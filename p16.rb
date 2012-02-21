# Hash < Object, Range < Object, each mixes in Enumerable

x = {:wear=>"hat", :eat=>"candy"}  # Hash, any type index
p x, x[:wear]                      # x[key] returns value
x[7] = 12                          # adds new pair
p x
x.each{|t, u| p t if u=="hat"}
p x.has_key?(:eat)
p x.keys, x.values
x = 'a'..'e'                       # Range
y = Range.new('a','e')
z = Range.new('a','e',true)        # excludes right end val
p x, y, z
z.each{|t|print t}
puts
x.step(2){|t|print t}              # every other pair



 