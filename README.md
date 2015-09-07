Haskell Scotty Spike
====================

Try to get a minimum useful REST service from Scotty

## Get Ready

1. You need stack installed: https://github.com/commercialhaskell/stack
2. Clone this repo
3. You might need the right GHC. From the project dir: ```stack setup```
1. The build will try to create the mysql library, for that you need
   mysql_config, on Ubuntu, ```sudo apt-get install libmysqlclient-dev```

## Run It
From the project dir: ```stack runghc ./app/Main.hs```

## Feel Its Power!
From somewhere: ```curl -v localhost:8099/hello```
