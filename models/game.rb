# rock and scissors --> rock wins
# rock and paper --> paper wins
# scissors and paper --> scissors wins

class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def play_game()
    return " you've drawn, play again " if @hand1 == @hand2
    case @hand1
    when "rock"
      if @hand2 == "paper"
        return "paper wins"
      end
      return "rock wins"
    when "scissors"
      if @hand2 == "rock"
        return "rock wins"
      end
      return "scissors wins"
    when "paper"
      if @hand2 == "scissors"
        return "scissors wins"
      end
      return "paper wins"
    end
  end


end
