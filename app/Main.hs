module Main where

import Web.Scotty(scotty)

import Resources

main :: IO ()
main = scotty 8099 resources
