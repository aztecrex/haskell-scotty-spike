module Hello (hello) where

{-
This module says Hello in IO
-}

hello :: IO String
hello = return "Hello."
