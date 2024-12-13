class Team 
  attr_reader :country,
              :eliminated,
              :players

  def initialize(country)
    @country = country
    @eliminated = false
    @players = []
  end

  def eliminated?
    @eliminated
  end

  def eliminated 
    @eliminated = true
  end

  def add_player(player)
    @players.push(player)
  end

  def players_by_position(position)
    #Iterate through the players array
    #Find the player with the matching position 
    #Return that player only in a new array
    
    #Starting with each, then refactoring 
    
    # matching_players = []

    # @players.each do |player|
    #   if player.position == position
    #     matching_players.push(player)
    #   end
    # end

    # matching_players
    
    #REFACTORED CODE#
    
    @players.select {|player| player.position == position}
    
  end
end