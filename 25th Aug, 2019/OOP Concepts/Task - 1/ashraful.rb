class Human
   def initialize(name, age, gender, height, weight)
      @name, @age, @gender, @height, @weight = name, age, gender, height, weight
   end

   # accessor methods
   def getName
      @name
   end
   def getAge
     @age
   end
   def getGender
     @gender
   end
   def getHeight
     @height
   end
   def getWeight
     @weight
   end

   # setter methods
   def setName(value)
      @name = value
   end
   def setAge(value)
      @age = value
   end
   def setGender(value)
      @gender = value
   end
   def setHeight(value)
      @height = value
   end
   def setWeight(value)
      @weight = value
   end
end

# create an object
man = Human.new("Ashraful",27,"Male",172.72,40)
human = Human.new("Tanvir",23,"Male",167.64,44)

# use accessor methods
puts "Persons Information by accessor methods"
puts "Human Details:\n Name : #{human.getName}\n Age : #{human.getAge}\n Gender : #{human.getGender}\n Height : #{human.getHeight}\n Weight : #{human.getWeight}"
puts "Man Details:\n Name : #{man.getName}\n Age : #{man.getAge}\n Gender : #{man.getGender}\n Height : #{man.getHeight}\n Weight : #{man.getWeight}"

# use setter methods
man.setWeight(71)
human.setWeight(64)

puts "\nPersons Information by setter methods"
puts "Human Details:\n Name : #{human.getName}\n Age : #{human.getAge}\n Gender : #{human.getGender}\n Height : #{human.getHeight}\n Weight : #{human.getWeight}"
puts "Man Details:\n Name : #{man.getName}\n Age : #{man.getAge}\n Gender : #{man.getGender}\n Height : #{man.getHeight}\n Weight : #{man.getWeight}"
