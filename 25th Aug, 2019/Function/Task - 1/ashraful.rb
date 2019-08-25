print "Enter your email : "
emailInput = gets.chomp
print "Enter your password : "
passwordInput = gets.chomp

def isEmailValid(email)
  isValid = false
  emailLength = email.length
  if emailLength >= 10 && emailLength <=50
    if /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/.match(email)
      isValid = true
    end
  end
  return isValid
end

puts "Email : " + isEmailValid(emailInput).to_s

def isPasswordValid(password)
  isValid = false
  passwordLength = password.length
  if passwordLength >= 8 && passwordLength <=32
    if password.scan(/[A-Z]/).length > 0 && password.scan(/[a-z]/).length > 0 && password.scan(/[0-9]/).length > 0 && password.scan(/[^A-Za-z0-9]/).length > 0
      isValid = true
    end
  end
  return isValid
end

puts "Password : " + isPasswordValid(passwordInput).to_s
