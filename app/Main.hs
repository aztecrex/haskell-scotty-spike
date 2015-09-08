module Main where
{-
This module is about configuring and launching a web server.  It delegates
wiring resources to the Resources module.
 -}
import Web.Scotty(scotty)
import System.Environment(lookupEnv)

import Resources

main :: IO ()
main = scotty 8099 resources


data Environment = DEVELOPMENT | PRODUCTION
env :: IO Environment
env = do
  envtoken <- lookupEnv "appenv"
  return $ select envtoken where
    select (Just "production") = PRODUCTION
    select _                   = DEVELOPMENT
