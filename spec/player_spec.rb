require 'player'
require 'team'

describe Player do

  describe 'applying for a team' do

    let(:player) { Player.new :female }
    let(:team) { Team.new }

    it 'is valid if the player is not already part of a team' do
      expect(player).to be_hireable
    end

    it 'is not valid if the player is already part of a team' do
      team.add_player player
      expect(player).not_to be_hireable
    end
  end
end