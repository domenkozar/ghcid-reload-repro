{-# LANGUAGE QuasiQuotes #-}
module Main (main) where

import Control.Concurrent.Async
import Data.Time.Clock
import Control.Monad (forever)
import Control.Concurrent (threadDelay)

main :: IO ()
main = do
  now <- getCurrentTime
  w <- async $ forever $ do 
    appendFile "log.txt" $ show now ++ "\n"
    threadDelay 1000000
  wait w