module Repositories.User (loadUsers, buildUser, writeUserData) where

import System.IO
import Models.User (User(..))

readUserDataFile :: FilePath -> IO String
readUserDataFile path = do
    content <- readFile path
    return content

buildUser :: String -> String -> User
buildUser uname pass = User { username = uname, password = pass }

writeUserData :: User -> IO User
writeUserData user@(User name password) = do
    let path = "Repositories/data/users.txt"
    let userData = name ++ ";" ++  password
    writeFile path userData
    return user

loadUsers :: IO ()
loadUsers = do
    let filePath = "Repositories/data/users.txt"
    content <- readUserDataFile filePath
    putStrLn $ "Content:\n" ++ content

