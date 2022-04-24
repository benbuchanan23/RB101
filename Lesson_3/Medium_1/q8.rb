#  Question 8
#  Method calls can take expressions as arguments. Suppose we define a method called rps as follows, which follows the classic rules of rock-paper-scissors game: it returns the winning fist or, in the case of a tie, the fist that both players played.

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

#  What is the result of the following call?

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
#  Basically this method returns the value of the winner b/w two RPS choices consistent w/ the rules of classic RPS. The inner rps("rock", "paper"), rps("rock", "scissors") returns the next outer shell rps("paper", "rock") which in turn returns the next outer shell rps("paper".... which goes against the remaining "rock") which in turn returns "paper as the champion". 