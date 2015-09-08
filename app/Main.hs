module Main where
{-
This module is about configuring and launching a web server.  It delegates
wiring resources to the Resources module.
 -}
import Web.Scotty(scotty)

import Resources

main :: IO ()
main = scotty 8099 resources
