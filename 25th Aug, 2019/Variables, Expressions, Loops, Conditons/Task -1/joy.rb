def main
=begin
  This is the main method to handle the whole program
=end
  input = getInput
  reverse input
  IsPalindrome input
  charCounter input
  caseModifier input
end

def getInput
  # Gets the console input
  input = gets
  input = input.chomp
end

def reverse(string)
  array_string = string.split("")
  size = string.size
  i = 0
  
  array_reverse = Array.new(size-1)

  while i < size do
    array_reverse[i] = array_string[size-1-i]
    i = i + 1
  end
  reverse = "Reverse: " + array_reverse.join
  puts reverse
end

def IsPalindrome(string)
  isPalindrome = true
  result = "isPalindrome: "
  size = string.size
  iterations = size/2
  i = 0
  while i < iterations do
    if string[i] != string[size-i-1]
      isPalindrome = false
      break
    end
    i = i+1
  end
  result += isPalindrome ? 'True' : 'False'
  puts result
end

def charCounter(string)
  count_number = 0
  count_upperCase = 0
  count_lowerCase = 0
  count_special = 0
  string = string.split("")
  size = string.size
  i = 0
  string.each do |char|
    if 47<char.ord && char.ord<58
      count_number += 1
    elsif 64<char.ord && char.ord<91
      count_upperCase += 1
    elsif 96<char.ord && char.ord<123
      count_lowerCase += 1
    else
      count_special += 1
    end
  end
  puts "lower-case: #{count_lowerCase}"
  puts "upper-case: #{count_upperCase}"
  puts "numbers: #{count_number}"
  puts "special: #{count_special}"
end

def caseModifier(string)
  puts "upper-case string: " + string.upcase 
  puts "lower-case string: " + string.downcase
end

main