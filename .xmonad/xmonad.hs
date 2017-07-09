import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks (ToggleStruts(..),avoidStruts,docks,manageDocks)
import XMonad.Layout.Spacing
import XMonad.Util.Run (spawnPipe)
import XMonad.Hooks.SetWMName
import XMonad.Hooks.EwmhDesktops
import XMonad.Util.EZConfig
import System.IO

import qualified Data.Map as M

------------------------------------------------------------------------

main :: IO()
main = do 
	xmonad $ docks $ ewmh $ def
		{
		  terminal           = myTerminal,
		  borderWidth        = 0,
		  modMask            = mod4Mask,
		  layoutHook         = avoidStruts  $  myLayoutHook,
		  startupHook        = myStartupHook,
		  handleEventHook    = myHandleEventHook
		} `additionalKeys` myKeys

------------------------------------------------------------------------

myLayoutHook = tiled ||| Mirror tiled ||| Full
	where
	  tiled = smartSpacingWithEdge 10 $ Tall nmaster delta ratio
    	  nmaster = 1				-- # of windows in master pane
    	  ratio = 1/2				-- ratio master/non-master
    	  delta = 3/100				-- screen ratio for adjustment

myStartupHook :: X()
myStartupHook = do
	spawn "~/.config/polybar/launch.sh"	-- start polybar  
	setWMName "LG3D" 			-- allow IntelliJ to start

myHandleEventHook = ewmhDesktopsEventHook <+> fullscreenEventHook

myKeys = 
	[ 
	 ((mod4Mask .|. shiftMask, xK_z), spawn myScreensaver),
	 ((controlMask, xK_Print), spawn mySelectScreenshot),
	 ((0, xK_Print), spawn myScreenshot),
	 ((mod4Mask .|. shiftMask, xK_p), spawn myLauncher),
	 ((mod4Mask, xK_b), sendMessage ToggleStruts) 
	 -- TODO write TogglePolybar .sh
	 -- ((mod4Mask .|. mod1Mask, xK_o), swapNextScreen),
	 -- ((mod4Mask .|. shiftMask, xK_o), shiftNextScreen)
	]

myTerminal = "urxvt"
-- myScreensaver = "/usr/bin/x-screensaver-command --lock"
myScreensaver = "i3lock -u -i ~/Documents/2017/Miscellany/where_tahrs_live_scaled.png"
mySelectScreenshot = "scrot -s"
myScreenshot = "scrot"
myLauncher = "rofi -font 'sans-serif 36' -show run"

------------------------------------------------------------------------

