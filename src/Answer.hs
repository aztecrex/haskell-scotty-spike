{-# LANGUAGE OverloadedStrings #-}

module Answer (answer) where

import Database.MySQL.Simple

answer :: IO Int
answer = do
  conn <- connect defaultConnectInfo
  [Only i] <- query_ conn "select 21 * 2"
  return i
