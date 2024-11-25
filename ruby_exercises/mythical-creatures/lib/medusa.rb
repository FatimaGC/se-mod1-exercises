class Medusa
  attr_reader :name,
              :statues

  def initialize(name)
    @name = name 
    @statues = []
  end

  def stare(victim)
    @statues.push(victim)
    victim.stoned = true 
  end
  
  def three_victims?
    @statues.count == 3 
  end

  def fourth_victim
    if @statues.count > 3 
      @statues.first.stoned = false 
    else
      #Not sure what to put here or if I even need an else. Can I just have an if?
    end
  end
end