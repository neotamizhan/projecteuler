#http://projecteuler.net/problem=14

def collatz_series(n)
  series = []
  while (n>1)    
    series << n
    n = (n.even?) ? n/2 : 3*n + 1 
  end
  series << n
  series.size
end

def get_longest_series
  n = 999999
  score = {}
  n.downto(1) { |i|
    score[i] = collatz_series(i)
  }

  score.max_by{|x| x[1]}
end

puts get_longest_series