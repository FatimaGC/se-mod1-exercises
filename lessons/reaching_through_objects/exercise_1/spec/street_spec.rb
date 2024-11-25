require 'rspec'
require './lib/street'
require './lib/building'

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

      expect(adlington.buildings).to eq (["Savills Apartment Building", "Zebra Apartments"])

    end

  end
end
