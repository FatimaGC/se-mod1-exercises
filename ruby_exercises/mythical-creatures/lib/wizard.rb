class Wizard
  attr_reader :name,
              :bearded

  def initialize(name, bearded: true) #are "bearded = true" and "bearded: true" the same thing?
    @name = name
    @bearded = bearded
  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    
  end
end