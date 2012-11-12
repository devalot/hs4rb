import System.IO
import System.Random
import Control.Monad

data Throw = Rock | Paper | Scissors
           deriving (Show, Read, Enum)

beats :: Throw -> Throw -> Bool
Rock     `beats` Scissors = True
Paper    `beats` Rock     = True
Scissors `beats` Paper    = True
_        `beats` _        = False

play :: Throw -> Throw -> String
play p1 p2
  | p1 `beats` p2 = "You win!"
  | p2 `beats` p1 = "You lose."
  | otherwise     = "Tie."

main :: IO ()
main = do
  putStr "Enter your move [Rock, Paper, or Scissors]: "
  hFlush stdout
  p1 <- liftM read getLine
  p2 <- liftM (toEnum . fst . (randomR (0,2))) getStdGen
  putStrLn $ show p1 ++ " vs. " ++ show p2
  putStrLn $ play p1 p2
