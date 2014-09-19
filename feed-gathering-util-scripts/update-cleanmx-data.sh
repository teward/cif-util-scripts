#!/bin/bash

# This script will download cleanmx feed data and store it locally in the
# configured FEEDDIR path, below.  Please make sure that the path you specify
# actually exists, otherwise there will be complications with this script.

#==============================================================================#
#==============================================================================#

###### Global Vars ######

# Feed storage root directory
FEEDDIR="/opt/cif/feed-data/"

###### Function Definitions ######
check_feeds_dir() {
    # This function checks to see if $FEEDDIR exists, and if it does not
	# then it will create it.
	
    # If directory does not exist, this returns true
    if ! [ -d $FEEDDIR ]; then
        mkdir $FEEDDIR
    fi
}

check_cleanmx_dir() {
    # This function checks to see if $FEEDDIR/cleanmx does not exist.  If it
    # does not, then this function will create the directory.  Otherwise, do
    # nothing.
    
    # If directory does not exist, this returns true
    if ! [ -d $FEEDDIR/cleanmx ]; then
        mkdir $FEEDDIR/cleanmx
    fi
}

remove_old_cleanmx_feed_data() {
    # This function checks to see if there is already (old) feed data inside the
    # $FEEDDIR/cleanmx/ directory.  If there is, this will remove that old 
    # feed data.
    
    # Clean-MX XMLViruses.php
    if [ -f $FEEDDIR/cleanmx/xmlviruses.php ]; then
        rm $FEEDDIR/cleanmx/xmlviruses.php;
    fi
    
    # Clean-MX XMLPhishing.php
    if [ -f $FEEDDIR/cleanmx/xmlphishing.php ]; then
        rm $FEEDDIR/cleanmx/xmlphishing.php
    fi
    }

get_new_cleanmx_feed_data() {
    # This function will download new cleanmx feed data and store it into the
    # $FEEDDIR/cleanmx/ directory.  It does, however, only execute if the
    # file does not already exist, so remove_old_cleanmx_feed_data() should
    # be run first.
    
    # Clean-MX XMLViruses.php
    wget -–quiet http://support.clean-mx.de/clean-mx/xmlviruses.php \
      -O $FEEDDIR/cleanmx/xmlviruses.php
    
    # Clean-MX XMLPhishing.php
    wget -–quiet http://support.clean-mx.de/clean-mx/xmlphishing.php \
      -O $FEEDDIR/cleanmx/xmlphishing.php
    
}

#==============================================================================#
#==============================================================================#

###### CODE EXECUTION ######

check_feeds_dir
check_cleanmx_dir
remove_old_cleanmx_feed_data
get_new_cleanmx_feed_data

exit 0
