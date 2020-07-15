module Main where

import Distribution

main :: IO ()
main = do
  samples <- randomSample 100
  let yellowTimes = (betaD 200 2 5) <$> samples
      redTimes = (betaD 200 2 2) <$> samples
      blueTimes = (betaD 200 5 1) <$> samples
  print $ maximum yellowTimes
  print $ average yellowTimes
  print $ maximum redTimes
  print $ average redTimes
  print $ maximum blueTimes
  print $ average blueTimes
