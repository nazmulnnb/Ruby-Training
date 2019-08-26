VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

def isEmailValid(email)
	if email =~ VALID_EMAIL_REGEX
		return 1
	else 
		return 0
	end
end

def isPasswordValid(pass)
	len = pass.length
	num = 0
	low_case = 0
	up_case = 0
	sp_char = 0
	i = 0
	while i < len
		if pass[i].match(/[0-9]/)
			num += 1
		elsif pass[i].match(/[a-z]/)
			low_case += 1
		elsif  pass[i].match(/[A-Z]/)
			up_case += 1
		elsif pass[i] != ' '
			sp_char += 1
		end
		i += 1
	end
	puts len
	puts num
	puts low_case
	puts up_case
	puts sp_char
	if len >= 8 && len <= 32 && num > 0 && low_case > 0 && up_case > 0 && sp_char > 0
		return 1
	else
		return 0
	end
end			
			
emailAddress = gets.chomp
puts isEmailValid(emailAddress)
passWord = gets.chomp
puts isPasswordValid(passWord)
