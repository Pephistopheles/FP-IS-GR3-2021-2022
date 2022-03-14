main :: IO()
main = do
    print $ isInside 1 5 4 == True -- n = 1, x = 5, y = 4
    print $ isInside 5 1 4 == True
    print $ isInside 10 50 20 == True
    print $ isInside 10 50 1 == False

isInside :: Int -> Int -> Int -> Bool
isInside x y n = elem n [min x y .. max x y]