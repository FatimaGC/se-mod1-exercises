require 'rspec'
require './lib/card'

RSpec.describe Card do
  it 'has a suit and a value' do
    card = Card.new("diamonds", "Q")

    expect(card.suit).to eq ("diamonds")
    expect(card.value).to eq ("Q")
  end
end