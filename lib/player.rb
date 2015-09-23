class Player

  attr_reader :gender

  def initialize gender
    @gender = gender
    @hireable = true
  end

  def hireable_player?
    @hireable
  end

  def employ
    @hireable = false
  end

end