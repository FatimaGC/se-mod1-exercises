require 'rspec'
require './lib/apartment'
require './lib/room'

RSpec.describe do 
  it 'can state whether or not it is currently rented' do
    apartment = Apartment.new
    expect(apartment.is_rented?).to eq false
    apartment.rent
    expect(apartment.is_rented?).to eq true
  end

  it 'can have up to 4 Rooms, and can list those Rooms by name, alphabetically' do
    apartment = Apartment.new
    bathroom = Room.new("bathroom")
    laundry = Room.new("laundry")
    kitchen = Room.new("kitchen")
    bedroom = Room.new("bedroom")

    apartment.add_room(bathroom)
    apartment.add_room(laundry)
    apartment.add_room(kitchen)
    apartment.add_room(bedroom)
    expect(apartment.rooms).to eq ([bathroom, laundry, kitchen, bedroom])
    expect(apartment.list_rooms_by_name_alphabetically).to eq (["bathroom", "bedroom", "kitchen", "laundry"])
  end
end