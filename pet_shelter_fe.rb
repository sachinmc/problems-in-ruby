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
  attr_reader :list, :list_unadopted

  @@owner_list = ''

  def self.retrieve_pet_list
    @@owner_list
  end

  def initialize
    @list = Hash.new {|h,k| h[k] = []}
    @list_unadopted = []
    @@owner_list = @list
  end

  def adopt(owner_obj, pet_obj)
    unless list.has_key?(owner_obj)
      list[owner_obj] << pet_obj
    else
      list[owner_obj] << pet_obj
    end
  end

  def unadopted(pet_obj)
    list_unadopted << pet_obj
  end

  def print_adoptions
    list.each do |owner, animal|
      puts "#{owner.name} has adopted the following pets:"
      animal.each { |pet| puts "a #{pet.pet} named #{pet.name}" }
      puts " "
    end
  end

  def print_unadopted
    puts "The Animal Shelter has the following unadopted pets:"
    @list_unadopted.each { |pet| puts "a #{pet.pet} named #{pet.name}" }
    puts " "
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

asta = Pet.new('dog', 'Asta')
laddie = Pet.new('dog', 'Laddie')
fluffy = Pet.new('cat', 'Fluffy')
kat = Pet.new('cat', 'Kat')
ben = Pet.new('cat', 'Ben')
chatterbox = Pet.new('parakeet', 'Chatterbox')
bluebell = Pet.new('parakeet', 'Bluebell')

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

shelter.unadopted(asta)
shelter.unadopted(laddie)
shelter.unadopted(fluffy)
shelter.unadopted(kat)
shelter.unadopted(ben)
shelter.unadopted(chatterbox)
shelter.unadopted(bluebell)

shelter.print_adoptions
shelter.print_unadopted


puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
puts "The Animal shelter has #{shelter.list_unadopted.size} unadopted pets."
