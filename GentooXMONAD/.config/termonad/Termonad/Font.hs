module Font
( Font (..)
, Style (..)
) where

import Data.Char

data Style = Regular
           | Bold
           | Italic
           deriving (Show, Eq)

data Font = Font
  { name      :: String
  , size      :: Int
  , style     :: Style
  , antialias :: Bool
  } deriving (Eq)

instance Show Font where
  showsPrec _ (Font n s st a) = showString $ "xft:" ++ n ++ ":size=" ++ (show s) ++ ":" ++ (lower $ show st) ++ ":antialias=" ++ (lower $ show a)
    where
      lower (c:cs) = toLower c : (lower cs)
      lower ([])  = []
