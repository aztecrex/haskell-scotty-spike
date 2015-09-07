module Main where

import Resources(hello)
import Web.Scotty(scotty)

main :: IO ()
main = scotty 8099 hello
