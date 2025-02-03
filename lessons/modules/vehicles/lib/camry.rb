# ./camry.rb
require "./engine.rb"
require "./airconditionable.rb"

class Camry
  include Engine 
  include Airconditionable

  def drive
    "Back wheels go!"
  end
end
