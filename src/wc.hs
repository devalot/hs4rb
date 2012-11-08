import qualified Data.ByteString.Lazy.Char8 as Lazy

main :: IO ()
main = Lazy.getContents >>= print . Lazy.count '\n'
