class String
  define_method(:beats) do |playertwo|
    player_one_choice = self.downcase()
    player_two_choice = playertwo.downcase()

    if player_one_choice.eql?(player_two_choice)
      "The play results in a tie"
    elsif player_one_choice.eql?("rock")
      if player_two_choice.eql?("scissors")
          "Player 1 wins"
      else
          "Player 2 wins"
      end
    elsif player_one_choice.eql?("paper")
      if player_two_choice.eql?("scissors")
          "Player 2 wins"
      else
          "Player 1 wins"
      end
    else player_one_choice.eql?("scissors")
      if  player_two_choice.eql?("paper")
          "Player 1 wins"
      else
          "Player 2 wins"
      end
    end
  end
end
