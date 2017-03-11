def is_prime?(num)
	return false if num <= 1
	[*2...num].each do |x|
		return false if num % x == 0
	end
	return true
end

def range_prime(_start,_end)
	[*_start,_end].select do |x|
		is_prime(x)
	end
end

p range_prime(1,50)
