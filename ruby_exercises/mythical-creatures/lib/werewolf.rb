class Werewolf
  attr_reader :name,
              :location,
              :human,
              :wolf,
              :hungry,
              :victims

  def initialize(name, location = 'London')
    @name = name 
    @location = location
    @human = true
    @wolf = false
    @hungry = false
    @victims = []
  end

  def human?
    @human
  end

  def change!
    if @human == true 
      @human = false
      @wolf = true
      @hungry = true
    elsif @human == false
      @human = true
      @wolf = false
      @hungry = false
    end
  end

  def wolf?
    @wolf
  end

  def hungry?
    @hungry
  end

  def consume(victim)
    if @wolf == true
      victims.push(victim)
      victim.status = 'dead'
      @hungry = false
    end
  end
end