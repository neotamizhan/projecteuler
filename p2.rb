def fibo
fib = [1,2]
while fib[-1] <= 4000000
  fib << fib[-1] + fib[-2]
end
puts fib.select{|x| x.even?}.reduce(:+)
end

fibo
