module Distribution where

import System.Random
import Control.Monad

randomSample :: Int -> IO [Float]
randomSample x =
  foldM (\acc _ -> flip (:) acc <$> genRand) [] [0..x]
    where
      genRand = randomRIO (0, 1)

betaD :: Float -> Float -> Float -> Float -> Float
betaD p alpha beta x =
  p * (x ** (alpha - 1.0)) * ((1.0 - x) ** (beta - 1.0))

average :: [Float] -> Float
average arr = (sum arr) / (toEnum $ length arr)
