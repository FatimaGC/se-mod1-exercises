class Dragon
  attr_reader :name,
              :color

  attr_accessor :rider,
                :hungry

  def initialize(name, color, rider)
    @name = name
    @color = color 
    @rider = rider
    @hungry = true
  end 

  def hungry?
    @hungry
  end

  def eat 
    count = 0

    while count < 4 do
      #check whether dragon is still hungry? hungry = true
      if @hungry == true
        count +=1
      else
        @hungry = false 
      end 
    end 
  end 
end 