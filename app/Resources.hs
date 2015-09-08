{-# LANGUAGE OverloadedStrings #-}

module Resources (resources) where
{-
The resources module is all about creating actions and binding them
to resource names.  The product of this module is a single ScottyM()
instance containing all of the application service resources.
-}

import Web.Scotty (ScottyM, ActionM, get, text)
import Control.Monad.IO.Class (liftIO)
import Data.Text.Lazy (pack)
import Hello
import Answer

action :: IO String -> ActionM()
action r = do
  a <- liftIO r
  text $ pack a

resources :: ScottyM()
resources = do
  get "/hello" $ action Hello.hello
  get "/answer" $ action $ fmap show Answer.answer
