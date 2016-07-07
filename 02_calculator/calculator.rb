def calculator
end

def add (x,y)
	x+y
end

def subtract (x,y)
	x-y
end

def sum (array)
	array.inject(0){|sum,x| sum + x}
end

def multiply (x,y)
	x*y
end

def power (x,y)
	x**y
end

def factorial(x)
	if x == 0
		 x = 1
	end

	sum = 1
	while x > 0
		sum = sum * x
		x = x - 1
	end
	sum
end