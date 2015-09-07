{-# LANGUAGE OverloadedStrings #-}

module Resources (hello) where

import  Web.Scotty (ScottyM, get, text)

hello :: ScottyM()
hello = get "/hello" $ text "Hello."
