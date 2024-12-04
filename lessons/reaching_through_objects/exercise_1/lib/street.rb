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

  def number_of_available_apartments #returns a number 
    # -The Building object already has access to the Apartment list
    # -Street > buildings (array) > apartment_list(array) > is_rented
    # Iterate through each building, 
    # Start with each to get iteration working then refactor 
    # Use pry to see what info you get, then add logic after
  
  #   available_apartments = 0

  #   @buildings.each do |building|
  #     building.apartment_list.each do |apartment|
  #       if apartment.rented == false
  #         available_apartments += 1
  #       end
  #     end
  #   end
  #   available_apartments
  # end
  
  #REFACTORED CODE
  
  available_apartments = @buildings.flat_map do |building|
    building.apartment_list.select do |apartment|
        apartment.rented == false
      end
    end
  available_apartments.count
  end
end