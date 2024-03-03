module Repositories.User (loadUsers) where
    
import System.IO

-- Assuming User is a record syntax data type defined in this module
data User = User { username :: String, password :: String }

-- Assuming this function reads file content
readUserDataFile :: FilePath -> IO String
readUserDataFile path = do
    content <- readFile path
    return content

-- Assuming this function builds a User record
buildUser :: String -> String -> User
buildUser username password = User { username = username, password = password }

-- Assuming this function loads users from a file
loadUsers :: IO ()
loadUsers = do
    let filePath = "Repositories/data/users.txt"
    content <- readUserDataFile filePath
    putStrLn $ "Content:\n" ++ content

