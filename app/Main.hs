module Main where
{-
This module is about configuring and launching a web server.  It delegates
wiring resources to the Resources module.
 -}
import Web.Scotty(scotty)
import System.Environment(lookupEnv)

import Resources
import Configure

main :: IO ()
main = do
  e <- env
  scotty 8099 $ resources e
