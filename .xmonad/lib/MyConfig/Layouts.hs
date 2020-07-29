module MyConfig.Layouts 
where

import XMonad
import Data.Monoid
import Data.Typeable
import System.Exit
import XMonad.Util.SpawnOnce
import XMonad.Util.Run
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.DynamicLog
import XMonad.Layout.LayoutModifier
import XMonad.Layout.Gaps
import XMonad.Layout.NoBorders
import XMonad.Layout.Spacing
import XMonad.Layout.Tabbed

----------------------------------------------------------------------------------------------------

mySpacing x = spacingRaw True (Border x x x x) True (Border x x x x) True

----------------------------------------------------------------------------------------------------
-- Layouts

-- main master/stack layout
tiled = mySpacing x $ Tall master increment ratio
    where
        x = 8
        master = 1
        increment = 0.02
        ratio = 0.5

-- fullscreen tabbed layout
tabs = noBorders $ tabbed shrinkText tabconfig
    where
        tabconfig = def { fontName            = "xft:Roboto Mono:size=9:bold:antialias=true," ++ 
                                                "Symbols Nerd Font:size=9:2048-em:antialias=true"
                        , activeColor         = "#0A0E16"
                        , activeBorderColor   = "#0A0E16" 
                        , inactiveColor       = "#0A0E16"
                        , inactiveBorderColor = "#0A0E16"
                        , activeTextColor     = "#E6B450"
                        , inactiveTextColor   = "#B3B1AD"
                        }

----------------------------------------------------------------------------------------------------

myLayoutHook = avoidStruts $ tiled ||| tabs
