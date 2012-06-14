#http://projecteuler.net/problem=12

def get_divisor_count(n)
  divisors= []
  sqt = (n/2) + 1
  1.upto(sqt) do |x|
    divisors << x if n%x == 0 
  end
  divisors << n
  divisors.size
end

def triangle_num(n)
  (1..n).reduce(:+)
end

def do_puzzle
ds = []
d = 0
n = 500
while d<500
  d = get_divisor_count(triangle_num(n))
  ds << d
  print '.'
  n=n+1
  print "#{d}:#{n}" if d == ds.max
end
puts n
end

#puts get_divisor_count(28)

do_puzzle