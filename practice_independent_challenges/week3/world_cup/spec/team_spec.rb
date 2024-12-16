require './lib/team'
require './lib/player'

RSpec.describe Team do
  describe '#initialize' do
    it 'exists' do
      team = Team.new("France")   

      expect(team).to be_instance_of(Team)
    end

    it 'has a country' do
      team = Team.new("France")   

      expect(team.country).to eq ("France")
    end 

    it 'has no players by default' do
      team = Team.new("France")   
      
      expect(team.players).to eq ([])
    end
  end 

  describe '#eliminated' do
    it 'is not eliminated by default' do
      team = Team.new("France")   
      
      expect(team.eliminated?).to eq false
    end

    it 'changes the eliminated attribute to true' do
      team = Team.new("France")   
      
      team.eliminated = true

      expect(team.eliminated?).to eq true
    end
  end
  

  

  describe '#add_player' do
    it "adds a player to the player's array" do
      team = Team.new("France")   

      mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
      pogba = Player.new({name: "Paul Pogba", position: "midfielder"})    

      team.add_player(mbappe)
      team.add_player(pogba)  

      expect(team.players).to eq ([mbappe, pogba])
    end
  end

  describe '#players_by_position' do
    it 'filters players by position' do
      team = Team.new("France")   

      mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
      pogba = Player.new({name: "Paul Pogba", position: "midfielder"})  
      
      team.add_player(mbappe)
      team.add_player(pogba)  

      expect(team.players_by_position("midfielder")).to eq ([pogba])
      expect(team.players_by_position("defender")).to eq ([])
    end
  end
end