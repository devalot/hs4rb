import System.IO
import System.Random
import Control.Monad
import Control.Arrow

data Throw = Rock | Paper | Scissors
           deriving (Show, Read, Enum, Bounded)

instance Random Throw where
  random g = first toEnum $ randomR (a, b) g
    where a = fromEnum (minBound :: Throw)
          b = fromEnum (maxBound :: Throw)

  randomR (a, b) g = first toEnum $ randomR (a', b') g
    where a' = fromEnum a
          b' = fromEnum b

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
  p1 <- getLine >>= readIO
  p2 <- liftM (fst . random) getStdGen
  putStrLn $ show p1 ++ " vs. " ++ show p2
  putStrLn $ play p1 p2
