class Person 

  def initialize(name, age)
    @name = name
    @age = age
  end

  def to_s
    "#{@name} is #{@age} years old."
  end
end

class SuperHero < Person 
  def initialize(name, age, superpower)
    super(name, age)
    @superpower = superpower
  end

  def to_s
  "#{@name} is #{@age} years old and has the superpower #{@superpower}"
end
end 

emily = Person.new("Emily", 28)
jean_grey = SuperHero.new("Jean Grey", 51, "Telekinesis")

puts emily
puts jean_grey