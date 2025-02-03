# ./jeep.rb
require "./engine.rb"
require "./airconditionable.rb"

class Jeep
  include Engine 
  include Airconditionable

  def drive
    "All wheels go!"
  end
end
