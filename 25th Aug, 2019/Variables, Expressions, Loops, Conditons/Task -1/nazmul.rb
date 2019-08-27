#let's start with the name of Allah

str = gets.chomp
puts "Length: " + String(str.length)
reverse_string = ''
i = str.length - 1
while i >= 0
	reverse_string += str[i]
	i = i - 1
end
puts "Reverse: " + reverse_string
if str.downcase == reverse_string.downcase
	puts "isPalindrome: True"
else
	puts "isPalindrome: False"
end
lower_case = 0
upper_case = 0
numbers = 0
special_chars = 0
i = 0
#checking each character individually
while i < str.length
	if str[i].match(/[A-Z]/)
		upper_case += 1
	elsif str[i].match(/[a-z]/)
		lower_case += 1
	elsif str[i].match(/[0-9]/)
		numbers += 1
	elsif str[i] != ' '
		special_chars += 1
	end
	i += 1
end
puts "lower-case: " + String(lower_case)
puts "upper-case: " + String(upper_case)
puts "numbers: " + String(numbers)
puts "special: " + String(special_chars)
puts "upper-case string: " + str.upcase
puts "lower-case string: " + str.downcase