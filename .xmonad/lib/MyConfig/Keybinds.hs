module MyConfig.Keybinds where

import XMonad
import System.Exit
import XMonad.Util.EZConfig
import qualified XMonad.StackSet as W
import qualified Data.Map        as M
import qualified MyConfig.DefaultApps as MyApps

keybinds conf = additionalKeysP conf 
    [ ("M-C-t"          , spawn MyApps.terminal)
    , ("M-C-w"          , spawn MyApps.browser)
    , ("M-C-f"          , spawn MyApps.fileManager)
    , ("M-C-S-f"        , spawn MyApps.fileManagerGui)
    , ("M-C-e"          , spawn MyApps.textEditor)
    , ("M-<Space>"      , spawn MyApps.appLauncher)

    , ("M-S-c"          , kill)
    , ("M-q"            , spawn "xmonad --recompile; xmonad --restart")
    , ("M-S-q"          , io (exitWith ExitSuccess))
    , ("M-n"            , refresh)

    , ("M-j"            , windows W.focusDown)
    , ("M-k"            , windows W.focusUp)
    , ("M-<Return>"     , windows W.focusMaster)

    , ("M-S-j"          , windows W.swapDown)
    , ("M-S-k"          , windows W.swapUp)
    , ("M-S-<Return>"   , windows W.swapMaster)

    , ("M-h"            , sendMessage Shrink)
    , ("M-l"            , sendMessage Expand)

    , ("M-t"            , withFocused $ windows . W.sink)

    , ("M-,"            , sendMessage (IncMasterN 1)) 
    , ("M-."            , sendMessage (IncMasterN (-1)))
    
    , ("M-<Tab>"            , sendMessage NextLayout)
    ]

