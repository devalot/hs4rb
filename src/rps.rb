class RockPaperScissors

  WINS = {
    "rock"     => "scissors",
    "paper"    => "rock",
    "scissors" => "paper",
  }

  def self.random
    WINS.keys[rand(WINS.size)]
  end

  def play (p1, p2)
    if p1 == p2
      "Tie."
    elsif WINS[p1] == p2
      "You win!"
    else
      "You lose."
    end
  end
end

print("Enter your move [Rock, Paper, or Scissors]: ")
p1 = gets.chomp.downcase
p2 = RockPaperScissors.random

rps = RockPaperScissors.new
puts("#{p1.capitalize} vs. #{p2.capitalize}")
puts(rps.play(p1, p2))
