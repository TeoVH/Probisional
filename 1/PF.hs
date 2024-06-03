module PF (
  f1,
  f2
) where

f1 :: a -> [a]
f1 x = [x]

f2 :: (a -> [a]) -> a -> a -> [a]
f2 g x y = g x ++ g y
