def passes?(num)
(1..20).select{|x| num%x>0}.size == 0
end

n=40
while true
	print "."
	break if passes?(n)
	n+=1		  
end

puts n
