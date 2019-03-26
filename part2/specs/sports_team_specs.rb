require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class SportsTeam < MiniTest::Test

  def test_get_team_name
    team = Team.new('Skye Camanachd', ["John","Steven","Dougie","Alan"], "Ally Mor", 0)
    assert_equal("Skye Camanachd", team.team_name)
  end

  def test_get_players
    team = Team.new('Skye Camanachd', ["John","Steven","Dougie","Alan"], "Ally Mor", 0)
    assert_equal(["John","Steven","Dougie","Alan"], team.players)
  end

  def test_get_coach
    team = Team.new('Skye Camanachd', ["John","Steven","Dougie","Alan"], "Ally Mor", 0)
    assert_equal("Ally Mor", team.coach)
  end

  def test_set_new_coach
    team = Team.new('Skye Camanachd', ["John","Steven","Dougie","Alan"], "Ally Mor", 0)
    team.coach = ("Donnie")
    assert_equal('Donnie', team.coach)
  end

  def test_players_in_team
    team = Team.new('Skye Camanachd', ["John","Steven","Dougie","Alan"], "Ally Mor", 0)

    assert_equal(true, team.players_in_team('John'))
  end

  def test_points
    team = Team.new('Skye Camanachd', ["John","Steven","Dougie","Alan"], "Ally Mor", 0)
    assert_equal(2, team.points("win"))
  end



end
