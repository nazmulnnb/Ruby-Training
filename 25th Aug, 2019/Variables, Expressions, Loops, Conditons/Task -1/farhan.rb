
def isPalindrome(string)
    temp=string.dup
    if(string.downcase==temp.reverse!.downcase)
        return true
    else
        return false
    end
end


puts "Enter String : "
inputString=gets.chomp
temp=inputString.dup
puts "Length : "+inputString.size.to_s
puts "Reverse:  : "+temp.reverse!
puts "isPalindrome:  : "+isPalindrome(inputString).to_s
puts "lower-case:  : "+inputString.scan(/[a-z]/).length.to_s
puts "upper-case:  : "+inputString.scan(/[A-Z]/).length.to_s
puts "numbers:  : "+inputString.scan(/[0-9]/).length.to_s
puts "special:  : "+inputString.scan(/[^ A-Za-z0-9]/).length.to_s
puts "upper-case string: "+inputString.downcase
puts "lower-case string: "+inputString.upcase