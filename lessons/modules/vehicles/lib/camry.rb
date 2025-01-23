# ./camry.rb
require ./engine.rb

class Camry
  include Engine 

  def drive
    "Back wheels go!"
  end
end
