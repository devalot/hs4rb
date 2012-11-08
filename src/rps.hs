import System.IO
import System.Random
import Control.Monad

data Throw = Rock
           | Paper
           | Scissors
             deriving (Show, Read, Enum, Bounded)

instance Random Throw where
  random g = (t, g')
    where (r, g') = randomR (0, 2) g
          t       = toEnum r
  randomR (a, b) g = (t, g')
    where (r, g') = randomR (fromEnum a, fromEnum b) g
          t       = toEnum r

beats :: Throw -> Throw -> Bool
Rock     `beats` Scissors = True
Paper    `beats` Rock     = True
Scissors `beats` Paper    = True
_        `beats` _        = False

play :: Throw -> Throw -> String
play p1 p2
  | p1 `beats` p2 = "You win!"
  | p2 `beats` p1 = "You lose!"
  | otherwise     = "Tie!"

game :: IO ()
game = do
  putStr "Enter your move [Rock,Paper,Scissors]: "
  hFlush stdout
  p1 <- getLine   >>= readIO
  p2 <- getStdGen >>= return . fst . random
  putStrLn $ (show p1) ++ " vs. " ++ (show p2)
  putStrLn $ play p1 p2

main :: IO ()
main = game
