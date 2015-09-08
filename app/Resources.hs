{-# LANGUAGE OverloadedStrings #-}

module Resources (resources) where

import Web.Scotty (ScottyM, ActionM, get, text)
import Control.Monad.IO.Class (liftIO)
import Data.Text.Lazy (pack)
import qualified Hello
import qualified Answer

action :: IO String -> ActionM()
action r = do
  a <- liftIO r
  text $ pack a

hello :: ScottyM()
hello = get "/hello" $ action Hello.hello

answer :: ScottyM()
answer = get "/answer" $ action $ fmap show Answer.answer

resources :: ScottyM()
resources = hello >> answer
