def main
  puts "Email:"
  email = gets
  email = email.chomp

  puts "Password:"
  pass = gets
  pass = pass.chomp

  puts "Email: " + isEmailValid(email).to_s
  puts "Password: " + isPasswordValid(pass).to_s
end

def isEmailValid(email)
  if email.match(/(?=.{10,50}$)\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i)
    return true
  end
  return false
end

def isPasswordValid(pass)
  if pass.match(/^(?=.{8,32}$)(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[0-9])(?=.*?\W).*$/)
    return true
  end
  return false
end
  
main