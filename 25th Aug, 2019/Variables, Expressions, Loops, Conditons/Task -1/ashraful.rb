demoString = "We Love Advancer <3 <3 <3"

#string length
puts "Length : " + demoString.length.to_s  # "to_s" convert integer to string

#reverse string
puts "Reverse : " + demoString.reverse

#palindrome
def isPalindrome(input)
  if input == input.reverse
    return "true"
  else
    return "false"
  end
end

puts "isPalindrome : "+isPalindrome(demoString)

#uppercase lowercase character
def checkCharacter(input)
  uppercaseCharacter = 0
  lowercaseCharacter = 0
  numberCharacter = 0
  specialCharacter = 0

  characters = input.split(//) #string to array
  for character in characters do
    if character != ' '
      if /[A-Z]/.match(character)
        uppercaseCharacter = uppercaseCharacter+1
      elsif /[a-z]/.match(character)
        lowercaseCharacter = lowercaseCharacter+1
      elsif /[0-9]/.match(character)
        numberCharacter = numberCharacter+1
      else
        specialCharacter = specialCharacter+1
      end
    end
  end

  puts "lower-case : " + lowercaseCharacter.to_s
  puts "upper-case : " + uppercaseCharacter.to_s
  puts "numbers : " + numberCharacter.to_s
  puts "special : " + specialCharacter.to_s
end
checkCharacter(demoString)

#uppercase string
puts "upper-case string : " + demoString.upcase

#lowercase string
puts "lower-case string : " + demoString.downcase
