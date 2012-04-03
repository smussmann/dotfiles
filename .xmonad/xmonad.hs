import XMonad
import XMonad.Config.Gnome
import XMonad.Util.EZConfig
import XMonad.Util.SpawnOnce

main = xmonad $ gnomeConfig
  { modMask = mod3Mask,
    startupHook = do
      spawnOnce "/home/sam/.xmonad/xmodmap.sh"
      startupHook gnomeConfig ,
    manageHook = composeAll
    [ manageHook gnomeConfig ]
  }
  `additionalKeysP`
  [
    ("M-S-q", spawn "gnome-session-quit")
  ]
