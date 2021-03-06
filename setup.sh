#!/bin/bash
set -eu                # Always put this in Bourne shell scripts
IFS=$(printf '\n\t')  # Always put this in Bourne shell scripts

#Install wireshark and tshark
sudo apt-get \
        install \
            wireshark \
            tshark
            
#Set up current user to capture network data            
sudo adduser $USER wireshark

#Install Carton dependency manager
cpanm Carton

#update local libraries
carton install   

#or globally install various perl libraries
sudo apt-get \
        install \
            libmodern-perl-perl \
            libgraphviz-perl \
            libio-interactive-perl \
            libparams-validate-perl \
            libsmart-comments-perl \
            libnumber-format-perl \
            libnumber-bytes-human-perl \
            libhash-merge-perl \
            libregexp-common-perl
