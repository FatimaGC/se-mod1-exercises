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
end 