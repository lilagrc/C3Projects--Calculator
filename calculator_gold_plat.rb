# Lila Garcia
# Calculator Project -- Gold + first part of Platinum (integer vs float)

# Get user input for operation. Store operation
puts "Welcome to this super-fun calculator. What kind of operation would you like to do today?"
operation = $stdin.gets.chomp.downcase

# Check to make sure operation isn't nil
while operation.empty? 
	puts "Hmmm. You didn't enter anything. What kind of math operation would you like to do?"
	operation = $stdin.gets.chomp.downcase
end

# Find out if user wants a result in float or integer
puts "Would you like your answer in a float or integer?"
num_type = $stdin.gets.chomp

# Get user input for first number and check if first number is valid
puts "I'll need two numbers. What is the first number?"
first_num = $stdin.gets.chomp
if first_num.to_i.to_s == first_num || first_num.to_f.to_s == first_num
elsif 
	while first_num.to_i.to_s != first_num
		puts "Looks like you didn't enter a number. Number, please!"
		first_num = $stdin.gets.chomp
	end
end

# Make first number float or integer
if num_type == "float"
	first_num = first_num.to_f
else 
	first_num = first_num.to_i
end

# Get user input for second number and check if valid

puts "What is the second number?"
second_num = $stdin.gets.chomp
if second_num.to_i.to_s == second_num || second_num.to_f.to_s == second_num
elsif 
	while second_num.to_i.to_s != second_num
		puts "Nope! Please enter a number"
		second_num = $stdin.gets.chomp
	end
end

# Make second number float or integer
if num_type == "float"
	second_num = second_num.to_f
else 
	second_num = second_num.to_i
end

# Determine which operation to run, and runs it
if operation == "add" || operation == "addition" || operation == "+"
	result = first_num + second_num
	puts "#{first_num} + #{second_num} = #{result}. Yay!"
elsif operation == "sub" || operation == "subtract" || operation == "-"
	result = first_num - second_num
	puts "#{first_num} - #{second_num} = #{result}. Yay!"
elsif operation == "div" || operation == "division" || operation == "/" || operation == "%"
	result = first_num / second_num
	puts "#{first_num} / #{second_num} = #{result}. Yay!"
elsif operation == "mult" || operation == "multiplication" || operation == "*" || operation == "multiply"
	result = first_num * second_num
	puts "#{first_num} * #{second_num} = #{result}. Yay!"
elsif operation == "exponent" || operation == "^"
	first_num = first_num.to_i
	second_num = second_num.to_i
	print "#{first_num}^#{second_num} = "
	result = first_num ** second_num
	(second_num - 1).times do 
	print first_num, " * "
	end
	if num_type == "float"
	puts "#{first_num} = #{result.to_f}"
	else 
	puts "#{first_num} = #{result}"
	end
elsif operation == "modulo" || operation == "%"
	result = first_num % second_num
	puts "#{first_num} % #{second_num} = #{result}"
else 
	puts "Oops, you chose an invalid operator. Goodbye!"
end
	


