class Pet
  attr_reader :pet, :name
  def initialize(pet, name)
    @pet = pet
    @name = name
  end
end

class Owner
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def number_of_pets
    Shelter.retrieve_pet_list.fetch(self).length
  end
end

class Shelter
  @@owner_list = ''

  def self.retrieve_pet_list
    @@owner_list
  end

  def initialize
    @list = Hash.new {|h,k| h[k] = []}
    @@owner_list = @list
  end

  def adopt(owner_obj, pet_obj)
    unless list.has_key?(owner_obj)
      list[owner_obj] << pet_obj
    else
      list[owner_obj] << pet_obj
    end
  end

  def print_adoptions
    list.each do |owner, animal|
      puts "#{owner.name} has adopted the following pets:"
      animal.each { |pet| puts "a #{pet.pet} named #{pet.name}" }
      puts " "
    end
  end

  private
  attr_reader :list
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions


puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
