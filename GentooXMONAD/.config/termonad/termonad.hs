{-# LANGUAGE OverloadedStrings #-}
-- | This is an example Termonad configuration that shows how to use the
-- Gruvbox colour scheme https://github.com/morhetz/gruvbox

module Main where

import Termonad
  ( CursorBlinkMode(CursorBlinkModeOn)
  , Option(Set)
  , ShowScrollbar(ShowScrollbarNever)
  , TMConfig
  , confirmExit
  , cursorBlinkMode
  , defaultConfigOptions
  , defaultTMConfig
  , options
  , showMenu
  , showScrollbar
  , start
  , FontConfig
  , FontSize(FontSizePoints)
  , defaultFontConfig
  , fontConfig
  , fontFamily
  , fontSize
  , ConfigOptions
  )
import Termonad.Config.Colour
  ( AlphaColour
  , ColourConfig
  , Palette(ExtendedPalette)
  , addColourExtension
  , createColour
  , createColourExtension
  , defaultColourConfig
  , defaultStandardColours
  , defaultLightColours
  , backgroundColour
  , foregroundColour
  , palette
  , List8
  , mkList8
  )

-- This is our main 'TMConfig'.  It holds all of the non-colour settings
-- for Termonad.
--
-- This shows how a few settings can be changed.
myTMConfig :: TMConfig
myTMConfig =
  defaultTMConfig
    { options =
        defaultConfigOptions
          { showScrollbar = ShowScrollbarNever
          , confirmExit = False
          , showMenu = False
          , cursorBlinkMode = CursorBlinkModeOn
          , fontConfig = fontConf
          }
    }

-- This is our Gruvbox dark 'ColourConfig'.  It holds all of our dark-related settings.
gruvboxDark :: ColourConfig (AlphaColour Double)
gruvboxDark =
  defaultColourConfig
    -- Set the default foreground colour of text of the terminal.
    { foregroundColour = Set (createColour 197 244 103) -- fg2
    , backgroundColour = Set (createColour  6 26 53) -- bg0
    -- Set the extended palette that has 2 Vecs of 8 Gruvbox palette colours
    , palette = ExtendedPalette gruvboxDark1 gruvboxDark2
    }
  where
    gruvboxDark1 :: List8 (AlphaColour Double)
    gruvboxDark1 = maybe defaultStandardColours id $ mkList8
      [ createColour  20  28  44 -- dark brown 1 (used as background colour)
      , createColour 255 132 132 -- red 2 
      , createColour 197 244 103 -- green 3    
      , createColour 255 204  92 -- dark yellow 4
      , createColour  92 178 255 -- dark purple 5
      , createColour 207 141 251 -- bright pink 6
      , createColour  92 236 198 -- teal 7
      , createColour 197 209 235 -- light brown 8
      ]

    gruvboxDark2 :: List8 (AlphaColour Double)
    gruvboxDark2 = maybe defaultStandardColours id $ mkList8
      [ createColour  20  28  44 -- dark brown 1 (used as background colour)
      , createColour 255 132 132 -- red 2 
      , createColour 197 244 103 -- green 3    
      , createColour 255 204  92 -- dark yellow 4
      , createColour  92 178 255 -- dark purple 5
      , createColour 207 141 251 -- bright pink 6
      , createColour  92 236 198 -- teal 7
      , createColour 197 209 235 -- light brown 8
      ]

-- This is our Gruvbox light 'ColourConfig'.  It holds all of our dark-related settings.
gruvboxLight :: ColourConfig (AlphaColour Double)
gruvboxLight =
  defaultColourConfig
    -- Set the default foreground colour of text of the terminal.
    { foregroundColour = Set (createColour  197 209 235) -- fg1
    , backgroundColour = Set (createColour    6  26  53) -- bg0
    -- Set the extended palette that has 2 Vecs of 8 Gruvbox palette colours
    , palette = ExtendedPalette gruvboxLight1 gruvboxLight2
    }
  where
    gruvboxLight1 :: List8 (AlphaColour Double)
    gruvboxLight1 = maybe defaultLightColours id $ mkList8
      [ createColour  20  28  44 -- dark brown 1 (used as background colour)
      , createColour 255 132 132 -- red 2 
      , createColour 197 244 103 -- green 3    
      , createColour 255 204  92 -- dark yellow 4
      , createColour  92 178 255 -- dark purple 5
      , createColour 207 141 251 -- bright pink 6
      , createColour  92 236 198 -- teal 7
      , createColour 197 209 235 -- light brown 8
      ]

    gruvboxLight2 :: List8 (AlphaColour Double)
    gruvboxLight2 = maybe defaultLightColours id $ mkList8
      [ createColour  0  28  44 -- dark brown 1 (used as background colour)
      , createColour 255 132 132 -- red 2 
      , createColour 197 244 103 -- green 3    
      , createColour 255 204  92 -- dark yellow 4
      , createColour  92 178 255 -- dark purple 5
      , createColour 207 141 251 -- bright pink 6
      , createColour  92 236 198 -- teal 7
      , createColour 197 209 235 -- light brown 8
      ]


-- This defines the font for the terminal.
fontConf :: FontConfig
fontConf =
  defaultFontConfig
    { fontFamily = "Jetbrains Mono Nerd Font"
    , fontSize = FontSizePoints 10
    }
   
main :: IO ()
main = do
  -- First, create the colour extension based on either Gruvboxmodules.
  myColourExt <- createColourExtension gruvboxDark

  -- Update 'myTMConfig' with our colour extension.
  let newTMConfig = addColourExtension myTMConfig myColourExt

  -- Start Termonad with our updated 'TMConfig'.
  start newTMConfig
