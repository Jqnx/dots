#!/bin/sh

# This allows you to control which image to init the daemon with according
# to the time of day. You may change the match cases as you see fit.
# This currently only takes hours into account, but it should be easy to
# modify to also use minutes, or days of the week, if you want.
#
# Use it simply by calling this script instead of swww-daemon

case $(date +%H) in
00 | 01 | 02 | 03 | 04 | 05 | 06 | 07 | 18 | 19 | 20 | 21 | 22 | 23) # First 8 hours of the day
  # Uncomment below to setup the image you wish to display as your
  # wallpaper if you run this script during the first 8 hours of the
  # day

  #swww-daemon && swww img ~/.wallpapers/sky2.jpg
  swww img ~/.wallpapers/sky2.jpg
  ;;
08 | 09 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17) # Middle 8 hours of the day
  # Same as above, but for the middle 8 hours of the day

  #swww-daemon && swww img ~/.wallpapers/field.jpg
  swww img ~/.wallpapers/field.jpg
  ;;
esac
