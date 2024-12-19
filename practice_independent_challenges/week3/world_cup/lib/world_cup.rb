class WorldCup
    attr_reader :year,
                :teams

    def initialize(year, teams)
        @year = year 
        @teams = teams
    end

    def active_players_by_position(position)
        #If the team's eliminated status is equal to true, 
        #that team's players are no longer active, do not return

				# matching_players = []

				# @teams.each do |team|
				# 	if team.eliminated? != true
				# 		matching_players.push(team.players_by_position(position))
				# 	end
				# end
				
				# matching_players.flatten

				@teams.select {|team| team.eliminated != true}
							.flat_map {|team| team.players_by_position(position)}
    end

    def all_players_by_position
        #Create a new hash with the keys "forward", "midfielder", and "defender"
        #Output looks like this:
            #{
            # "forward" => [#<Player:0x00007f936a9168b0...>],
            # "midfielder" => [#<Player:0x00007f936c035eb0...>, #<Player:0x00007f936a3595f8...>],
            # "defender" => [#<Player:0x00007f936a318f08...>]
            # }

        players_hash = {}
        
        #Start with each
        #Teams (array of two teams) > each Team.players (array of players) > each Player has player.position
        @teams.each do |team|
            team.players.each do |player|
                players_hash[player.position] ||= []

                players_hash[player.position] << player 
            end
        end
        players_hash
    end
end 