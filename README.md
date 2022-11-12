# Waydroid and Qubes ...
... sound not to friends, but with some magic they're working at their relationship ... ;-)

but let's start at the beginning

# Prepare a template for Waydroid within Qubes

Preparation:

Close Debian 11 template to Debian 11 waydroid template.

Download "install_waydroid.sh", make it executeable, do changes (if needed) ... and run it in your Debian 11 waydroid template:

```
install_waydroid.sh
```

(Of course you should read and understand the script before you allow it to change anything within your template ... as it should not be compromised)

As soon as it's done your template is ready to use.

# Prepare your AppVM or DispVM

(You should know what to do ... ;-) )

No? ... well ... that's easy:

Create a new AppVM (or DispVM) with "Debian 11 waydroid template" as template

Change mode from PVH to PV.

# Run, Forrest, Run

Start a shell in AppVM and start weston using:

```
weston
```

Within the Weston-window then enter

```
waydroid session start
```

It may take some minutes until you get the message "Android with user 0 ready"

Now open a new shell (as two shells are now blocked) and enter

```
waydroid show-full-ui
```

Within some seconds you should now see the Waydroid/Linage-Launcher

Enjoy ... ;-)

... and within the next days you'll learn how to modify the template to get a german keyboard (mostly) and network ... ;-)
