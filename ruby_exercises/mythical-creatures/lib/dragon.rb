class Dragon
  attr_reader :name,
              :color,
              :rider,
              :hungry

  # attr_accessor :hungry

  def initialize(name, color, rider)
    @name = name
    @color = color 
    @rider = rider
    @hungry = true
    @count = 0
  end 

  def hungry?
    @hungry
  end

  def eat 
   
      if @count < 2
        @count +=1
      elsif @count >= 2
        # require 'pry'; binding.pry
        @hungry = false 
      end 
      # require 'pry'; binding.pry

  end 
end 