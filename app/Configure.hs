module Configure (Environment, env) where

import System.Environment(lookupEnv)

data Environment = DEVELOPMENT | PRODUCTION

env :: IO Environment
env = do
  envtoken <- lookupEnv "appenv"
  return $ select envtoken where
    select (Just "production") = PRODUCTION
    select _                   = DEVELOPMENT
