n=(1..100)
puts n.reduce(:+)**2 - n.map{|x| x**2}.reduce(:+)
