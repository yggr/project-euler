--remove repeats
r :: (Eq a) => [a] -> [a]
r [] = []
r (x:xs) = if x `elem` xs then r xs else x : r xs

--find the length of a list
--l :: (Eq a) => [a] -> a 
l xs = sum [1 | _ <- xs]

main :: IO ()
main = do
    let xs = r $ [a^b | a <- [2..100], b <- [2..100]]
    print $ l xs
