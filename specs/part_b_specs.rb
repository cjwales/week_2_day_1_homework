require('minitest/autorun')
require('minitest/rg')
require_relative('../part_b.rb')

class TestClassHomeworkPartB < Minitest::Test

  def setup
    @sportsteam = SportsTeam.new("Tigers", ["John", "Chris", "Neil"], "Bob", 0)
  end

  def test_get_team_name()
    assert_equal("Tigers", @sportsteam.team_name())
  end

  def test_get_players()
    assert_equal(["John", "Chris", "Neil"], @sportsteam.players())
  end

  def test_get_coach()
    assert_equal("Bob", @sportsteam.coach())
  end

  def test_set_coach()
    @sportsteam.coach = "Brian"
    assert_equal("Brian", @sportsteam.coach())
  end

  def test_add_player()
    @sportsteam.add_new_player("Steve")
    assert_equal(["John", "Chris", "Neil", "Steve"], @sportsteam.players())
  end

  def test_check_player_exists()
    result = @sportsteam.check_player_exists("Chris")
    assert_equal(true, result)
  end

  def test_point_for_win()
    @sportsteam.point_for_win("win")
    assert_equal(1, @sportsteam.points)
  end

end
