require 'prime'

def add(num1, num2)
	sum = num1 + num2
end

def subtract(num1, num2)
	difference = num1 - num2
end

def sum(array)
	new_num = 0
	array.each do |num|
		new_num += num
	end
	return new_num
end

def multiply(array)
	new_num = 1
	array.each do |num|
		new_num *= num
	end
	return new_num
end

def power(num1, num2)
	power = num1 ** num2
end

def factorial(num)
	new_num = 1
	i = 0
	fact = []
	while i <= num
		fact.push num - i
		i += 1
	end
	fact.each do |num2|
		if num2 == 0
			num2 = 1
		end
		new_num *= num2
	end
	return new_num
end
