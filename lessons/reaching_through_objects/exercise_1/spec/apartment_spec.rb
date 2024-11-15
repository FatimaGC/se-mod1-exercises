require 'rspec'
require './lib/apartment'
require './lib/bathroom'

RSpec.describe do 
  it 'can state whether or not it is currently rented' do
    apartment = Apartment.new
    expect(apartment.rented).to eq false
    apartment.rent
    expect(apartment.rented).to eq true
  end

  it 'can have up to 4 Rooms, and can list those Rooms by name, alphabetically' do
    apartment = Apartment.new
    bathroom = Room.new("bathroom")

    apartment.add_room(bathroom)
    apartment.add_room(Room.new("laundry"))
    apartment.add_room(Room.new("kitchen"))
    apartment.add_room(Room.new("bedroom"))
    expect(apartment.rooms).to eq (#array of room objects?)
  end
end