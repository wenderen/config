# This file has been auto-generated by i3-config-wizard(1).
# It will not be overwritten, so edit it as you like.
#
# Should you change your keyboard layout somewhen, delete
# this file and re-run i3-config-wizard(1).
#

# i3 config file (v4)
#
# Please see http://i3wm.org/docs/userguide.html for a complete reference!

# Mod1 is the Alt key
# Mod4 is the Win key
set $mod Mod1

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below. ISO 10646 = Unicode
# font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1
# The font above is very space-efficient, that is, it looks good, sharp and
# clear in small sizes. However, if you need a lot of unicode glyphs or
# right-to-left text rendering, you should instead use pango for rendering and
# chose a FreeType font, such as:
# font pango:DejaVu Sans Mono 10
font pango:Droid Sans 8

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
bindsym $mod+Return exec i3-sensible-terminal
# xterm baby!
# bindsym $mod+Return exec xterm

# all workspaces start out with the tabbed layout
workspace_layout tabbed

# moving the mouse should not change window focus
focus_follows_mouse no

# kill focused window
bindsym $mod+Shift+q kill
bindsym $mod+F4 kill

# start dmenu (a program launcher)
bindsym $mod+d exec dmenu_run -i -p "Run command" -fn "Inconsolata"
# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.
# bindsym $mod+Shift+d exec --no-startup-id i3-dmenu-desktop
bindsym $mod+Shift+d exec --no-startup-id j4-dmenu-desktop --dmenu="dmenu -i -p 'Open application'"

# change focus
bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+l focus up
bindsym $mod+semicolon focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+semicolon move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

# switch to workspace
bindsym $mod+1 workspace 1
bindsym $mod+2 workspace 2
bindsym $mod+3 workspace 3
bindsym $mod+4 workspace 4
bindsym $mod+5 workspace 5
bindsym $mod+6 workspace 6
bindsym $mod+7 workspace 7
bindsym $mod+8 workspace 8
bindsym $mod+9 workspace 9
bindsym $mod+0 workspace 10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace 1
bindsym $mod+Shift+2 move container to workspace 2
bindsym $mod+Shift+3 move container to workspace 3
bindsym $mod+Shift+4 move container to workspace 4
bindsym $mod+Shift+5 move container to workspace 5
bindsym $mod+Shift+6 move container to workspace 6
bindsym $mod+Shift+7 move container to workspace 7
bindsym $mod+Shift+8 move container to workspace 8
bindsym $mod+Shift+9 move container to workspace 9
bindsym $mod+Shift+0 move container to workspace 10

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym j resize shrink width 10 px or 10 ppt
        bindsym k resize grow height 10 px or 10 ppt
        bindsym l resize shrink height 10 px or 10 ppt
        bindsym semicolon resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+r mode "resize"

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
        status_command i3status
        #status_command i3status-with-mocp
		position bottom
		#position top
		#mode hide
		#hidden_state hide
		#modifier Mod1
		
		colors {
			#background #ffffff
			#statusline #000000
			
			# defaults
			#focused_workspace  #ffffff #285577
            #active_workspace   #ffffff #333333
            #inactive_workspace #888888 #222222
            #urgent_workspace   #ffffff #900000
           	
			#client.focused #888888 #888888 #00000 #2e9ef4

            # when there are three colors,
            # the format is border-background-text color
			#focused_workspace  #285777 #285577 #ffffff
			focused_workspace  #888888 #888888 #000000
            active_workspace   #ffffff #333333
            inactive_workspace #000000 #000000 #888888
            urgent_workspace   #ffffff #900000
		}
}

# exec --no-startup-id feh --bg-fill "/host/Desktop Backgrounds/mu/Kvelertak.jpg"
# exec --no-startup-id feh --bg-fill "/host/Desktop Backgrounds/Bliss.jpg"
# exec --no-startup-id feh --bg-fill "/host/Desktop Backgrounds/Linux/Ubuntu 2.jpg"
# exec --no-startup-id feh --bg-fill "/host/Desktop Backgrounds/Floodlight.jpg"
# exec --no-startup-id feh --bg-fill "/host/Desktop Backgrounds/Spirited Away.jpg"
# exec --no-startup-id feh --bg-fill "/host/Desktop Backgrounds/mu/Tera Melos/untitled.jpg"
# exec --no-startup-id feh --bg-fill "/host/Desktop Backgrounds/mu/Tera Melos/untitled.png"
# exec --no-startup-id feh --bg-fill "/host/Desktop Backgrounds/Water Valley.jpg"
exec --no-startup-id feh --bg-fill "/host/Desktop Backgrounds/Winter World.jpg"

bindsym XF86AudioRaiseVolume exec amixer -q set Master 2dB+ unmute
bindsym XF86AudioLowerVolume exec amixer -q set Master 2dB- unmute
bindsym XF86AudioMute exec amixer -q set Master toggle

# allow connecting to different wired/wireless networks in i3
exec --no-startup-id nm-applet

# allow changing of volume from i3bar
exec --no-startup-id gnome-sound-applet

# allow gnome to theme stuff
exec --no-startup-id gnome-settings-daemon

new_window pixel 1
#new_window none
#hide_edge_borders both

set $mode_system System (l) lock, (e) logout, (s) suspend, (h) hibernate
mode "$mode_system" {
    bindsym l exec --no-startup-id i3exit lock, mode "default"
    bindsym e exec --no-startup-id i3exit logout, mode "default"
    bindsym s exec --no-startup-id i3exit suspend, mode "default"
    bindsym h exec --no-startup-id i3exit hibernate, mode "default"

    # back to normal: Enter or Escape
    bindsym Return mode "default"
    bindsym Escape mode "default"
}
bindsym $mod+Pause mode "$mode_system"

# assign sublime text to workspace 2, always
#assign [class="Sublime_text"] 2
#assign [class="Blender"] 10
