# ./jeep.rb
require ./engine.rb

class Jeep
  include Engine 

  # def start
  #   "Engine on!"
  # end

  def drive
    "All wheels go!"
  end
end
