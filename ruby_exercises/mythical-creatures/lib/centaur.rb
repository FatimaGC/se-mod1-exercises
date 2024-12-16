class Centaur
  attr_reader :name,
              :breed,
              :cranky,
              :standing,
              :activity,
              :laying

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @activity = 0
    @laying = false
  end

  def shoot
    @activity += 1

    if @laying == true || @activity >= 3
      'NO!'
    else 
      'Twang!!!'
    end
  end

  def run
    @activity += 1

    if @laying == true || @activity >= 3
      'NO!'
    else 
      'Clop clop clop clop!'
    end
  end

  #For test 35: 
    # if shoot OR run is called 3x total, change @cranky to true.
    # use a counter to track how many times shoot and run is called?

  def cranky?
    if activity == 3
      @cranky = true
    else 
      @cranky
    end
  end
  
  def standing?
    @standing
  end

  def sleep
    if @standing == true
      'NO!'
    end
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def laying?
    @laying 
  end
end