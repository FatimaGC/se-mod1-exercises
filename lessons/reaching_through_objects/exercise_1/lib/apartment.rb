class Apartment
  attr_reader :rented 

  def initialize()
    @rented = false 
  end

  def rent
    @rented = true
  end
end