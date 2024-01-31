VALID_EMAIL_REGEX =  /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i #regular expression for email validation

def isEmailValid(email)
      if !(email.size>=10 and email.size<=50)
        return false
      elsif !(email =~ VALID_EMAIL_REGEX)
        return false
      end
      return true
end
  
def isPasswordValid(password)
   if password[/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[\W]).{8,32}$/]  #regular expression for password validation
     return true
   end
   return false
end

puts "Enter Email : "
emailAddress=gets.chomp
puts "Enter Password : "
password=gets.chomp

if(isEmailValid(emailAddress))
  puts "email is valid"
else
  puts "email is not valid"
end

if(isPasswordValid(password))
  puts "password is valid"
else
  puts "password is not valid"
end


