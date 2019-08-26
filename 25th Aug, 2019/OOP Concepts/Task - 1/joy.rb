class Human
  def initialize(name, age, gender, height, weight)
    @name = name
    @age = age
    @gender = gender
    @height = height
    @weight = weight
  end

  #accessor methods
  def getterName
    @name
  end

  def getterAge
    @age
  end
  
  def getterGender
    @gender
  end
  
  def getterHeight
    @height
  end
  
  def getterWeight
    @weight
  end

  #setter methods
  #accessor methods
  def setterName(value)
    @name = value
  end

  def setterAge(value)
    @age = value
  end
  
  def setterGender(value)
    @gender = value
  end
  
  def setterHeight(value)
    @height = value
  end
  
  def setterWeight(value)
    @weight = value
  end
end

human = Human.new("Human", 23, "male", 162, 60)
man = Human.new("Man", 23, "male", 164, 66)

puts "Human Details:\n #{human.getterName}, #{human.getterAge}, #{human.getterGender}"
puts "Man Details:\n #{man.getterName}, #{man.getterAge}, #{man.getterGender}"
