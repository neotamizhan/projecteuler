#http://projecteuler.net/problem=4

def palin?(num)
  num.to_s.reverse == num.to_s
end

palins = []

(100..999).each do |n|
  (100..999).each do |m|
    s = n*m
    palins << s if palin?(s)
  end
end

puts palins.max
