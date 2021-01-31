class Human
	def initialize (name, age, gender, height, weight)
		@name, @age, @gender, @height, @weight = name, age, gender, height, weight
	end

	def setName(name)
		@name = name
	end

	def setAge(age)
		@age = age
	end

	def setGender(gender)
		@gender = gender
	end

	def setHeight(height)
		@height = height
	end

	def setWeight(weight)
		@weight = weight
	end

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
end

man = Human.new("Foyez", 26, "Male", 5.9, 56)
woman = Human.new("Bristy", 23, "Female", 5.4, 64)

puts man.getName + " " + String(man.getAge) + " " + man.getGender + " " + String(man.getHeight) + " " + String(man.getWeight)
puts woman.getName + " " + String(woman.getAge) + " " + man.getGender + " " + String(man.getHeight) + " " + String(man.getWeight)

