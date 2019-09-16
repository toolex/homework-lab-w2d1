class SportsTeam

  attr_accessor(:team_name, :players, :coach, :points)

  def initialize(input_team_name, players_on_team, input_coach, input_points)
    @team_name = input_team_name
    @players = players_on_team
    @coach = input_coach
    @points = input_points
  end

  # def get_team_name
  #   return @team_name
  # end
  #
  # def get_team_players
  #   return @players
  # end
  #
  # def get_coach_name
  #   return @coach
  # end
  #
  # def set_coach_name(new_name)
  #   @coach = new_name
  # end

  def add_new_player(new_player)
    # new_player.push(@players)
    @players.push(new_player)
  end

  def check_player(player_name)
    for player_name_within_array in @players
      return true if player_name = player_name_within_array
    end
  end

  def add_or_lose_points(win)
    return @points = win
  end

end
