class Owner
  attr_reader :name, :dog

  def initialize(name:, dog:)
    @name = name
    @dog = dog
  end

  def walk
    prepare_items
  end

  def walking?
    dog.walking
  end

  def prepare_items
    dog.get_ready
  end

  def vet_checkup
    prepare_items
  end

end
