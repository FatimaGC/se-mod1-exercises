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
    if @statues.count > 3 
      unstone(victim)
    end
  end

  def unstone(victim)
    @statues.first.stoned = false 
    @statues.shift
  end
end