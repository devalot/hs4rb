class RockPaperScissors

  WINS = {
    "rock"     => "scissors",
    "paper"    => "rock",
    "scissors" => "paper",
  }

  def beats (p1, p2)
    WINS[p1] == p2
  end

  def play (p1, p2)
    if beats(p1, p2)
      "You win!"
    elsif beats(p2, p1)
      "You lose."
    else
      "Tie."
    end
  end
end

$stdout.print("Enter your move [Rock, Paper, or Scissors]: ")
p1 = $stdin.gets.chomp.downcase
p2 = RockPaperScissors::WINS.keys[rand(RockPaperScissors::WINS.size)]

rps = RockPaperScissors.new
$stdout.puts("#{p1.capitalize} vs. #{p2.capitalize}")
$stdout.puts(rps.play(p1, p2))
