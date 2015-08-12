class Dog
  attr_reader :name, :breed, :owner
  attr_accessor :leash, :plastic_bag, :walking, :vet

  def initialize(name, breed, owner_name)
    @name = name
    @breed = breed
    @owner = Owner.new(name: owner_name, dog: self)
    @leash = false
    @plastic_bag = false
    @walking = false
    @vet_checkup = false
  end

  def bark
    "Woof!"
  end

  def walking?
    !!@walking
  end

  def get_ready
    self.leash = true
    self.plastic_bag = true
    self.walking = true
  end

  def vet_checkup?(owner)
    owner.dog.vet_checkup
  end
end
