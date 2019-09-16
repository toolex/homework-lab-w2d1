require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team")

class TestSportsTeam < MiniTest::Test

  def test_get_team_name
    sports_team = SportsTeam.new("Tigers", ["Bob", "Iain", "Jim"], "Manny", 0)
    assert_equal("Tigers", sports_team.team_name)
  end

  def test_get_team_players
    sports_team = SportsTeam.new("Tigers", ["Bob", "Iain", "Jim"], "Manny", 0)
    assert_equal(["Bob", "Iain", "Jim"], sports_team.players)
  end

  def test_get_coach_name
    sports_team = SportsTeam.new("Tigers", ["Bob", "Iain", "Jim"], "Manny", 0)
    assert_equal("Manny", sports_team.coach)
  end

  def test_set_coach_name
    sports_team = SportsTeam.new("Tigers", ["Bob", "Iain", "Jim"], "Manny", 0)
    sports_team.coach = "Steve"
    assert_equal("Steve", sports_team.coach)
  end

  def test_add_new_player
    sports_team = SportsTeam.new("Tigers", ["Bob", "Iain", "Jim"], "Manny", 0)
    sports_team.add_new_player("Dave")
    assert_equal(["Bob", "Iain", "Jim", "Dave"], sports_team.players)
  end

  def test_check_player
    sports_team = SportsTeam.new("Tigers", ["Bob", "Iain", "Jim"], "Manny", 0)
    assert_equal(true, sports_team.check_player("Iain"))
  end

  def test_add_or_lose_points
    sports_team = SportsTeam.new("Tigers", ["Bob", "Iain", "Jim"], "Manny", 0)
    assert_equal(1, sports_team.add_or_lose_points(1))
  end

end
