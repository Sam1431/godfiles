module Color
( Color (..)
, showWebColor
, showCColor
, getAlphaColour
) where

import GHC.Word
import Numeric (showHex)
import qualified Data.Colour as Col
import qualified Data.Colour.SRGB as SRGB

data Color =
  Color {
    r :: Word8
  , g :: Word8
  , b :: Word8
  }
  deriving (Eq)

instance Show Color where
  showsPrec _ (Color r' g' b') = pad r' . showHex r' . pad g' .showHex g' . pad b' . showHex b'
    where
      pad c
        | c < 16    = showString "0"
        | otherwise = showString ""

showWebColor :: Color -> String
showWebColor = ('#' :) . show

showCColor :: Color -> String
showCColor = ("0x" ++) . show

getAlphaColour :: Color -> Col.AlphaColour Double
getAlphaColour c = Col.opaque $ SRGB.sRGBBounded (r c) (g c) (b c)
