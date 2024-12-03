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

  def list_buildings_alphabetically
    @buildings.map do |building|
      building.name
    end.sort
  end
end