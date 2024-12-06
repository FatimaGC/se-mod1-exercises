class Deck 
  attr_reader :cards

  def initialize()
    @cards = []
  end

  def add_card(card)
    @cards.push(card)
  end

  def random_card
    
  end
end