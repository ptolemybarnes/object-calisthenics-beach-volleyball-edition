class Team

  def initialize
    @players = []
  end

  def add_player player
    player.employ
    @players << player
  end

  def valid_size?
    number_of_players > 6 && number_of_players < 11
  end

  def number_of_players
    @players.length
  end

  def valid_gender_split?
    gender_count[:male]> 1 && gender_count[:female] > 1
  end

  def gender_count
    gender_split =  { male: 0, female: 0 }
    @players.each do | player |
      gender_split[player.gender] += 1
    end
    gender_split
  end
end