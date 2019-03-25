class Team

  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  def players_in_team(names)
    for player in players
      if player == names
      return true
    else
      return false
    end
  end
end


end
