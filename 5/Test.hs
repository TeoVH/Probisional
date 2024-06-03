import Test.HUnit
import TC

-- Definición de las pruebas unitarias
test1 :: Test
test1 = TestCase (assertEqual "for (Const True)," True (isT (Const True)))

test2 :: Test
test2 = TestCase (assertEqual "for (Not (Const True))," False (isT (Not (Const True))))

test3 :: Test
test3 = TestCase (assertEqual "for (And (Const True) (Const False))," False (isT (And (Const True) (Const False))))

test4 :: Test
test4 = TestCase (assertEqual "for (Or (Const True) (Const False))," True (isT (Or (Const True) (Const False))))

test5 :: Test
test5 = TestCase (assertEqual "for (Cond (Const True) (Const False))," False (isT (Cond (Const True) (Const False))))

test6 :: Test
test6 = TestCase (assertEqual "for (Bicond (Const True) (Const True))," True (isT (Bicond (Const True) (Const True))))

-- Colección de pruebas
tests :: Test
tests = TestList [ TestLabel "Test1" test1
                 , TestLabel "Test2" test2
                 , TestLabel "Test3" test3
                 , TestLabel "Test4" test4
                 , TestLabel "Test5" test5
                 , TestLabel "Test6" test6
                 ]

-- Función principal para correr las pruebas
main :: IO Counts
main = runTestTT tests
