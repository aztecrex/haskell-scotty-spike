{-# LANGUAGE OverloadedStrings #-}

module Persistence (findAnswer) where

import Database.MySQL.Simple

findAnswer :: IO Int
findAnswer = do
  conn <- connect defaultConnectInfo
  [Only i] <- query_ conn "select 21 * 2"
  return i
