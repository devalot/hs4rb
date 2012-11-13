--------------------------------------------------------------------------------
-- {BEGIN: bool}

{-

  - I'm using Bool' here because Bool is already defined
  - Bool' is the "type constructor"
  - False' and True' are "value constructors"
  - Values "know" which constructor created them

-}
data Bool' = False' | True'

-- {END}

--------------------------------------------------------------------------------
-- {BEGIN: person}

{-

  - Using the same name for the type and value constructors
  - Record syntax (matching functions are created)
  - The deriving clause generates code for you

-}
data Person = Person
              { firstName :: String
              , lastName  :: String
              , age       :: Int
              } deriving (Eq, Show)

-- {END}

--------------------------------------------------------------------------------
-- {BEGIN: maybe}

{-

  - A polymorphic data type using type variables

-}
data Maybe' a = Nothing' | Just' a

-- {END}

--------------------------------------------------------------------------------
-- {BEGIN: tree}

{-

  - A recursive data type representing a binary tree
  - Nodes can have 0, 1, or 2 children.
  - Nodes must have a value.

-}
data BTree a = Leaf
             | Node a (BTree a) (BTree a)
             deriving (Eq, Show)

-- {END}
