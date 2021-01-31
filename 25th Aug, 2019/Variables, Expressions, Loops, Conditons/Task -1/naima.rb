s = gets.chomp
len = String(s.length)
puts "Length: " + len

rev_string = ""
i = s.length-1
while i >= 0
	rev_string += s[i]
	i = i-1
end
puts "Reverse: " + rev_string

if(s == rev_string)
	puts "isPalindrome: True"
elsif
	puts "isPalindrome: False"	
end

l_case = 0
u_case = 0
num = 0
sp_char = 0

j = 0
while j < s.length
	if(s[j].match(/[a-z]/))
		l_case += 1
	elsif(s[j].match(/[A-Z]/))
		u_case += 1
	elsif(s[j].match(/[0-9]/))
		num += 1
	else
		if(s[j]  != " ")
			sp_char += 1
		end
	end
	j += 1
end

puts "lower-case: " + String(l_case)
puts "upper-case: " + String(u_case)
puts "numbers: " + String(num)
puts "special: " + String(sp_char)

u_case_string = s.upcase
l_case_string = s.downcase
puts "upper-case string: " + u_case_string
puts "lower-case string: " + l_case_string