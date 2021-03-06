import Data.Maybe
import Control.Monad
import Control.Applicative

--------------------------------------------------------------------------------
-- {BEGIN: square}

{-

  - The name of this function is "mySquare"
  - It takes a single argument, "x"
  - Functions must produce the same result given the same arguments
  - Functions can only see their arguments
  - Notice that there is no type information
  - The compiler will infer the types

-}
mySquare x = x * x

-- {END}

--------------------------------------------------------------------------------
-- {BEGIN: square'}

{-

  - This version has a type signature
  - It can only work with integers

-}
mySquare' :: Int -> Int
mySquare' x = x * x

-- {END}

--------------------------------------------------------------------------------
-- {BEGIN: square''}

{-

  - This version uses a "type class" and "type variables"
  - "Num" is a type class, and "a" is a type variable
  - It's polymorphic and works with any instance of Num

-}
mySquare'' :: Num a => a -> a
mySquare'' x = x * x

-- {END}

--------------------------------------------------------------------------------
-- {BEGIN: add}

{-

  - This function takes two arguments
  - Let's play with:
    - Function application
    - Partial application
    - Infix notation
    - This function compared to the + operator
    - Operator sections

-}
myAdd :: Num a => a -> a -> a
myAdd x y = x + y

-- {END}

--------------------------------------------------------------------------------
-- {BEGIN: add'}

{-

  - Notice that the (->) operator is right associative
  - This function strips away some syntactic sugaring to show currying
  - It also includes an example of lambda functions

-}
myAdd' :: Num a => a -> (a -> a)
myAdd' x = \y -> x + y

-- {END}

--------------------------------------------------------------------------------
-- {BEGIN: sum}

{-

  - Pattern matching can be used to define different versions of a function
  - This function also demonstrates recursion instead of looping

-}
mySum :: Num a => [a] -> a
mySum []     = 0
mySum (x:xs) = x + mySum xs

-- {END}

--------------------------------------------------------------------------------
-- {BEGIN: justSquare}

justSquare :: Num a => Maybe a -> Maybe a
justSquare Nothing  = Nothing
justSquare (Just x) = Just (x * x)

-- {END}

--------------------------------------------------------------------------------
-- {BEGIN: justSquare'}

justSquare' :: Num a => a -> Maybe a
justSquare' x = Just (x * x)

-- {END}
