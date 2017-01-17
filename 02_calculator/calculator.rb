#write your code here
def add number_1, number_2
	number_1 + number_2
end

def subtract number_1, number_2
	number_1 - number_2
end

def sum number_list
	sum_of_numbers = 0
	number_list.each do |number|
		sum_of_numbers += number
	end
	sum_of_numbers
end

def multiply number_list
	product_of_numbers = 1
	number_list.each do |number|
		product_of_numbers *= number
	end
	product_of_numbers
end

def power number_1, number_2
	number_1**number_2
end

def factorial number
	product = number
	while number > 1 do
		number -= 1
		product*=number
	end

	product
end