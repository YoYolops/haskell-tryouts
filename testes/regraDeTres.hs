import System.IO

readFloat :: IO Float
readFloat = do
    input <- getLine
    return (read input)


main :: IO ()
main = do
    dividendo <- readFloat
    multiplicadorUm <- readFloat
    multiplicadorDois <- readFloat
    putStrLn $ "O valor de x é: " ++ show((multiplicadorUm * multiplicadorDois)/dividendo)