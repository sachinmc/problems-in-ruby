# Fake operators

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def not_yet_18?
    @age < 18
  end
end

class Team
  attr_accessor :name, :members

  def initialize(name)
    @name = name
    @members = []
  end

  def << person # or def <<(person); ... end;
    return if person.not_yet_18?
    @members << person # or @members.push(person)
  end

  def +(other_team)
    temp_team = Team.new("Dream Team")
    temp_team.members = @members + other_team.members
    temp_team
  end

  def [](idx)
    @members[idx]
  end

  def []=(idx, person)
    @members[idx] = person
  end

end

cowboys = Team.new("Dallas Cowboys")
cowboys << Person.new("Troy Aikman", 48)
cowboys << Person.new("Emmitt Smith", 46)
cowboys << Person.new("Michael Irvin", 49)


niners = Team.new("San Francisco 49ers")
niners << Person.new("Joe Montana", 59)
niners << Person.new("Jerry Rice", 52)
niners << Person.new("Deion Sanders", 47)

p cowboys[1]

p cowboys[3] = Person.new("JJ", 72)

p cowboys.members

dream_team = cowboys + niners
p dream_team
