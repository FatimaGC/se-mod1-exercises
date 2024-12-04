require 'rspec'
require './lib/street'
require './lib/building'
require './lib/apartment'


RSpec.describe Street do
  it 'has a name' do
    adlington = Street.new("Adlington Road")
    expect(adlington.name).to eq ("Adlington Road")
  end

  describe '#add_building' do 
    it 'adds your owned buildings to this street' do
      adlington = Street.new("Adlington Road")
      bldg = Building.new("623", "Savills Apartment Building")

      adlington.add_building(bldg)
      expect(adlington.buildings).to eq ([bldg])
    end

    it 'can list the buildings you own on this street, alphabetically by name' do
      adlington = Street.new("Adlington Road")
      savills = Building.new("623", "Savills Apartment Building")
      zebra = Building.new("123", "Zebra Apartments")

      adlington.add_building(savills)
      adlington.add_building(zebra)

      expect(adlington.list_buildings_alphabetically).to eq (["Savills Apartment Building", "Zebra Apartments"])
    end
  end

  describe `#number_of_available_apartments` do
    it 'states the number of Apartments that are not currently rented' do
      adlington = Street.new("Adlington Road")
      savills = Building.new("623", "Savills Apartment Building")
      apt_1 = Apartment.new
      apt_2 = Apartment.new
      apt_3 = Apartment.new



      adlington.add_building(savills)
      savills.add_apartment(apt_1)
      savills.add_apartment(apt_2)
      savills.add_apartment(apt_3)

      expect(adlington.number_of_available_apartments).to eq 3
    end
  end
  
  
  

end
