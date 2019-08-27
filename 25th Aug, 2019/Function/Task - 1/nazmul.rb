#let's start with the name of Allah

#function for email validation
def isEmailValid(email)
	if email.match('[a-z0-9]+[_a-z0-9\.-]*[a-z0-9]+@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})')
		return 1
	else
		return 0
	end
end

#function for password validation
#you can also use regex if you want to shorten your code
#Broad code is for syntax
def isPasswordValid(pass)
	low = 0, up = 0, sp = 0, num = 0, i = 0
	while i < pass.length
		if pass[i].match(/[A-Z]/)
			up = 1
		elsif pass[i].match(/[a-z]/)
			low = 1
		elsif pass[i].match(/[0-9]/)
			num = 1
		elsif pass[i] != ' '
			sp = 1
		end
		i += 1
	end
	if pass.length >=8 && pass.length <=32 && up+low+num+sp == 4
		return 1
	else 
		return 0
	end
end
		
print "email: "
email = gets.chomp
puts isEmailValid(email)
print "password: "
password = gets.chomp
puts isPasswordValid(password)