require 'net/smtp'
require 'securerandom'

def sendEmail(toEmail)
    randomNumber=SecureRandom.random_number(99999..1000000) #It will generate 6 digit random number
    puts "email : "+toEmail
    msg = randomNumber.to_s
    smtp = Net::SMTP.new 'smtp.gmail.com', 587
    smtp.enable_starttls
    smtp.start("domain", fromEmail, password, :login) do #Here you should put your gmail id and password
    smtp.send_message(msg, fromEmail, toEmail.to_s)         #You also need to give permission for less secure app in your gmail
    smtp.finish
    end
end


if File.exists?("email.txt")
    begin  
        arr = IO.readlines("email.txt")
        sendEmail(arr[0].to_s)
    rescue 
        puts "Unable to open file!"
    end
else
    puts "File not found"
end
