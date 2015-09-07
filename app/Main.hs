module Main where

import Resources
import Web.Scotty(scotty)

main :: IO ()
main = scotty 8099  (hello >> answer)
