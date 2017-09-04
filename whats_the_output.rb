class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    @name.upcase!
    "My name is #{@name}"
  end
end

name = 42
fluffy = Pet.new(name)
name += 1 # 43
puts fluffy.name # 42
puts fluffy # My name is 42
puts fluffy.name # 42
puts name # 43
