import Data.Monoid
import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.FadeInactive
import XMonad.Util.Run
import XMonad.Util.SpawnOnce

import MyConfig.Keybinds
import MyConfig.Layouts
import qualified MyConfig.DefaultApps as MyApps

------------------------------------------------------------------------
-- Window rules:

windowRules = composeAll
    [ className =? "MPlayer"        --> doFloat
    , className =? "Gimp"           --> doFloat
    , resource  =? "desktop_window" --> doIgnore
    , resource  =? "kdesktop"       --> doIgnore ] <> manageDocks

------------------------------------------------------------------------
-- Log Hook

myLogHook xmproc = do
    dynamicLogWithPP xmobarPP 
        { ppOutput = hPutStrLn xmproc                        
        , ppCurrent = xmobarColor "#E6B450" "" -- Current workspace in xmobar
        , ppVisible = xmobarColor "#FFB454" ""                -- Visible but not current workspace
        , ppHidden = xmobarColor "#B3B1AD" ""    -- Hidden workspaces in xmobar
        , ppTitle = xmobarColor "#B3B1AD" "" . shorten 60     -- Title of active window in xmobar
        , ppSep =  "  "                     -- Separators in xmobar
        , ppUrgent = xmobarColor "#C45500" "" . wrap "!" "!"  -- Urgent workspace
        , ppOrder  = \(ws:_:t:_) -> [ws,t]
        }
    fadeInactiveLogHook 0.8
 

------------------------------------------------------------------------
-- Startup hook

myStartupHook = do
    spawn     "sh ~/scripts/desktop_env/update_wallpaper.sh &"
    spawnOnce "picom &"
    spawnOnce "nm-applet &"
    spawnOnce "discord &"
    spawnOnce "stalonetray -c /home/toby/.xmonad/stalonetray.config &"
    spawnOnce "setxkbmap gb &"

------------------------------------------------------------------------

main = do
    xmproc <- spawnPipe "xmobar /home/toby/.xmonad/xmobar.config"
    xmonad $ docks $ keybinds def {
      -- simple stuff
        terminal            = MyApps.terminal,
        modMask             = mod4Mask,
        workspaces          = ["1","2","3","4","5","6","7","8:chat","9:web"],

        borderWidth         = 0,
        normalBorderColor   = "#1B2733",
        focusedBorderColor  = "#273747",

        focusFollowsMouse   = False,
        clickJustFocuses    = True,

      -- hooks, layouts
        layoutHook          = myLayoutHook,
        manageHook          = windowRules,
        logHook             = myLogHook xmproc,
        startupHook         = myStartupHook
    }
