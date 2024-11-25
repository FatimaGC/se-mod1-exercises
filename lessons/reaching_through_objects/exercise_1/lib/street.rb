class Street 
  attr_reader :name,
              :buildings

  def initialize(name)
    @name = name 
    @buildings = []
  end

  def add_building(bldg)
    @buildings.push(bldg)
  end
end