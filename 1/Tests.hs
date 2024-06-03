module Main where

import Test.QuickCheck
import PF

prop_f1 :: Eq a => a -> Bool
prop_f1 x = f1 x == [x]

newtype FunWrapper a = FunWrapper { getFun :: a -> [a] }

instance Show (FunWrapper a) where
    show _ = "<<function>>"

instance (CoArbitrary a, Arbitrary a) => Arbitrary (FunWrapper a) where
    arbitrary = FunWrapper <$> arbitrary

prop_f2 :: (Eq a, Show a, Arbitrary a, CoArbitrary a) => FunWrapper a -> a -> a -> Bool
prop_f2 (FunWrapper g) x y = f2 g x y == g x ++ g y

main :: IO ()
main = do
    putStrLn "Testing 'double' function:"
    quickCheck (prop_f1 :: Int -> Bool)
    quickCheck (prop_f1 :: Char -> Bool)

    quickCheck (prop_f2 :: FunWrapper Int -> Int -> Int -> Bool)
    quickCheck (prop_f2 :: FunWrapper Char -> Char -> Char -> Bool)
