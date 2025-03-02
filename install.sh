#!/bin/sh
SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=true
LATESTARTSERVICE=true
REPLACE="

"
sleep 2
ui_print
ui_print "      IdleCharging!!       "
ui_print 
ui_print "- by : @Zexshia!"
ui_print "- Limit : 90%!"
sleep 0.2
ui_print "Device : $(getprop ro.product.board) "
sleep 2
ui_print "- Extracting module files"
unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
unzip -o "$ZIPFILE" 'service.sh' -d "$MODPATH" >&2

ui_print "- Installing bellavita toast"
unzip -o "$ZIPFILE" 'toast.apk' -d $MODPATH >&2
pm install $MODPATH/toast.apk
rm $MODPATH/toast.apk
set_perm_recursive $MODPATH 0 0 0777 0777
