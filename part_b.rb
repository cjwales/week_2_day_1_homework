class SportsTeam

  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  # def get_team_name()
  #   return @team_name
  # end
  #
  # def get_players()
  #   return @players
  # end
  #
  # def get_coach()
  #   return @coach
  # end
  #
  # def set_coach(name)
  #   @coach = name
  # end

  def add_new_player(new_player)
    @players.push(new_player)
  end

  def check_player_exists(player_name)
    @players.include?(player_name)
  end

  def point_for_win(result)
    @points += 1 if result == "win"
  end

end
