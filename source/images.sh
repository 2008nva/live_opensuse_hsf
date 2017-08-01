#!/bin/sh
#======================================
# Functions...
#--------------------------------------
test -f /.kconfig && . /.kconfig
test -f /.profile && . /.profile

#======================================
# Greeting...
#--------------------------------------
echo "Configure image: [$kiwi_iname]..."

#======================================
# Fixing permissions
#--------------------------------------
baseSetupUserPermissions

#======================================
# setup build day
#--------------------------------------
baseSetupBuildDay

#==========================================
# {iso/sys}linux graphical theme
#------------------------------------------
#gfxboot --update-theme HSF

#==========================================
# remove unneded kernel files
#------------------------------------------
#suseStripKernel

#==========================================
# remove unneeded files
#------------------------------------------
#suseStripInitrd

#======================================
# umount
#--------------------------------------
baseCleanMount

#======================================
# Exit safely
#--------------------------------------
exit 0
