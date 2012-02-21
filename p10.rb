# Numeric < Object
# Numeric mixes in Comparable
# Float < Numeric, Integer < Numeric
# Fixnum < Integer, Bignum < Integer

print Float::MIN, " ", Float::MAX, "\n"
x, y = 2.71, 3.14                     # multiple assignment
puts sprintf("%d %d %d\n",            # format string
                           x <=> y,   # -1 less than
                           x.<=>(x),  # 0 equal, <=> method
                           y <=> x)   # 1 greater
q,r = y.divmod(x)                     # quotient, remainder
print q, ' ', r, "\n"
puts x ** y                           # exponentiation
puts 31.4.eql?(31.4)                  # eql? doesn't convert
print 3.0.eql?(3), " ", 3.0==3, "\n"  # == converts
print 3<=> 4,' ',3<4,"\n"             # < uses <=>

puts 3|6                              # bitwise or
puts 3<<2                             # left shift
puts 3.size                           # number of bytes
puts 65.chr                           # ASCII

puts 123456789876.size                # Bignum
puts 123456789876**3                  # really Bignum
puts (123456789876**3).size
123456789876.downto(123456789874) {   # break line at {
     |t|print t, " "}
puts
3.times do |t|                        # do-end like {}
  print "ho", ' '
end
puts
puts 123456789876.between?(1,200000000000)
                                      # Comparable