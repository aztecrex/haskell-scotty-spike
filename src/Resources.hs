{-# LANGUAGE OverloadedStrings #-}

module Resources (
    hello
  , answer) where

import Web.Scotty (ScottyM, get, text)
import Control.Monad.IO.Class (liftIO)
import Data.Text.Lazy (pack)

import Persistence

hello :: ScottyM()
hello = get "/hello" $ text "Hello."

answer :: ScottyM()
answer = get "/answer" $ do
  a <- liftIO findAnswer
  text $ pack $ show a
