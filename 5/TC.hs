module TC where

data Prop = Const Bool
    | Var Char
    | Not Prop
    | And Prop Prop
    | Or Prop Prop
    | Cond Prop Prop
    | Bicond Prop Prop

isT :: Prop -> Bool

isT (Const b) = b

isT (Var _) = False

isT (Not p) = not (isT p)

isT (And p1 p2) = isT p1 && isT p2

isT (Or p1 p2) = isT p1 || isT p2

isT (Cond p1 p2) = not (isT p1) || isT p2

isT (Bicond p1 p2) = isT p1 == isT p2

