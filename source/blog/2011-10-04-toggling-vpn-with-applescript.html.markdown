---
title: Toggling VPN with AppleScript
date: 2011-10-04 00:00 UTC
tags:
category: Articles
---

Since moving back to Boulder, I've been using [Viget's](http://www.viget.com) VPN more and more often to grab stuff off of our shared fileserver. I take a fairly minimalist approach to my menu-bar (going so far as to remove the clock from it) so I wasn't thrilled about having the VPN icon up there but having to open up network preferences to connect and disconnect from the VPN wasn't terribly fun either.

Enter AppleScript.  After a bit of digging, I found that you can script the connecting and disconnecting of a given VPN. Grab the name of the VPN service you'd like to easily toggle and open up AppleScript editor and paste in this script:

  tell application "System Events"
    tell current location of network preferences
      set VPNservice to service "VPN SERVICE" -- name of the VPN service
      set isConnected to connected of current configuration of VPNservice
      if isConnected then
        disconnect VPNservice
      else
        connect VPNservice
      end if
    end tell
  end tell

You'll want to change "VPN SERVICE" to the name of your VPN connection from network preferences (retaining the quotes).  Running this will switch the states of your VPN from connect to not.  That in and of itself isn't terribly interesting but if you have a app that can handle system-wide hotkeys (like [Quicksilver](http://www.qsapp.com), [Alfred](http://www.alfredapp.com/), or [Keyboard Maestro](http://www.keyboardmaestro.com/main/)) you can bind this script to run at the press of a button (for me, it's just Cmd + F12).

