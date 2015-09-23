require 'team'
require 'player'

describe Team do

  describe 'team size' do

    let (:team) { Team.new }
    let (:player) { Player.new :male }

    it 'is valid with a size of 7 players' do
      7.times { team.add_player(player) }
      expect(team).to be_valid_size
    end

    it 'is not valid with a size of 6 players' do
      6.times { team.add_player(player) }
      expect(team).not_to be_valid_size
    end

    it 'is not valid with a size of 11 players' do
      11.times { team.add_player(player) }
      expect(team).not_to be_valid_size
    end
  end

  describe 'team gender split' do

    let (:team) { Team.new }
    let (:female_player) { Player.new :female }
    let (:male_player) { Player.new :male }

    it 'is valid when it contains two females and two males' do
      2.times { team.add_player female_player }
      2.times { team.add_player male_player }
      expect(team).to be_valid_gender_split
    end

    it 'is not valid when it contains only one female and two males' do
      team.add_player female_player
      2.times { team.add_player male_player }
      expect(team).not_to be_valid_gender_split
    end

    it 'is not valid when it contains only two females and one male' do
      2.times { team.add_player female_player }
      team.add_player male_player
      expect(team).not_to be_valid_gender_split
    end
  end

end