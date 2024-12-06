class Centaur
  attr_reader :name,
              :breed,
              :shoot,
              :run,
              :cranky,
              :standing
      

  def initialize(name, breed = 'Palomino')
    @name = name
    @breed = breed
    @shoot = 'Twang!!!'
    @run = 'Clop clop clop clop!'
    @cranky = false
    @standing = true
  end

  def shoot
    @shoot
  end

  def run
    @run
  end

  def cranky?
    @cranky
    
    #For test 35: 
    # if shoot OR run is called 3x total, change @cranky to true.
    # use a counter to track how many times shoot and run is called?
    # use a helper method?
  end
  
  def standing?
    @standing
  end
end