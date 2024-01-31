class Human
    attr_accessor :Name, :Age, :Gender , :Height , :Weight # creates both getter and setter methods
    def initialize  #Constructor
    end
end

man = Human.new()
man.Name="farhan"
man.Age=25
man.Gender="male"
man.Height=5.5
man.Weight=65

human = Human.new()
human.Name="human"
human.Age="unknown"
human.Gender="unknown"
human.Height="unknown"
human.Weight="unknown"

puts human.Weight




