module Repositories.User (loadUsers) where
    
import System.IO

data User = User { username :: String, password :: String }

readUserDataFile :: FilePath -> IO String
readUserDataFile path = do
    content <- readFile path
    return content

buildUser :: String -> String -> User
buildUser username password = User { username = username, password = password }

writeUser :: User -> IO()
writeUser (User name password) = do
    let path = "Repositories/data/users.txt"
    let data = name ++ ";" ++  password
    writeFile path data


loadUsers :: IO ()
loadUsers = do
    let filePath = "Repositories/data/users.txt"
    content <- readUserDataFile filePath
    putStrLn $ "Content:\n" ++ content

