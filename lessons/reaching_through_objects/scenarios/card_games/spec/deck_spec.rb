require 'rspec'
require './lib/deck'
require './lib/card'

RSpec.describe Deck do 
  it 'has at least 5 Cards' do
    deck = Deck.new
    card_1 = Card.new("diamonds", "Q")
    card_2 = Card.new("hearts", "K")
    card_3 = Card.new("diamonds", "2")
    card_4 = Card.new("clubs", "3")
    card_5 = Card.new("spades", "A")

    deck.add_card(card_1)
    deck.add_card(card_2)
    deck.add_card(card_3)
    deck.add_card(card_4)
    deck.add_card(card_5)

    expect(deck.cards.count).to eq 5
  end

  describe '#random_card' do
    it 'can pull a random card' do
    deck = Deck.new
    card_1 = Card.new("diamonds", "Q")
    card_2 = Card.new("hearts", "K")
    card_3 = Card.new("diamonds", "2")
    card_4 = Card.new("clubs", "3")
    card_5 = Card.new("spades", "A")

    deck.add_card(card_1)
    deck.add_card(card_2)
    deck.add_card(card_3)
    deck.add_card(card_4)
    deck.add_card(card_5)

    expect(deck.random_card).to include ([card_1, card_2, card_3, card_4, card_5])
    end
  end
end