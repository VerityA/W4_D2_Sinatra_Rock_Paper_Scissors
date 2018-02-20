require 'minitest/autorun'
require_relative '../models/game'


class TestGame < Minitest::Test

  def setup
    @game1 = Game.new("rock", "paper")
    @game2 = Game.new("paper", "rock")
    @game3 = Game.new("scissors", "paper")
    @game4 = Game.new("paper", "scissors")
    @game5 = Game.new("rock", "scissors")
    @game6 = Game.new("scissors", "rock")
    @game7 = Game.new("scissors", "scissors")
    @game8 = Game.new("rock", "rock")
    @game9 = Game.new("paper", "paper")

  end

  def test_play_game__game1_paper_wins()
    result = @game1.play_game()
    assert_equal("paper wins", result)
  end

  def test_play_game__game2_rock_wins()
    result = @game2.play_game()
    assert_equal("paper wins", result)
  end

  def test_play_game__game3_scissors_wins()
    result = @game3.play_game()
    assert_equal("scissors wins", result)
  end

  def test_play_game__game4_scissors_wins()
    result = @game4.play_game()
    assert_equal("scissors wins", result)
  end

  def test_play_game__game5_rock_wins()
    result = @game5.play_game()
    assert_equal("rock wins", result)
  end

  def test_play_game__game6_rock_wins()
    result = @game6.play_game()
    assert_equal("rock wins", result)
  end

  def test_play_game__game789_draw()
    result = @game7.play_game()
    assert_equal(" you've drawn, play again ", result)
  end



end # end of the class
