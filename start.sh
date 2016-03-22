#!/bin/bash

if [ $1 == "" ] 
then
    echo "you should specify which release to run: sled sles or opensuse"
    exit
fi

case $1 in
    opensuse)
        perl /usr/share/openqa/script/client isos post ISO=openSUSE-13.2-DVD-x86_64.iso DISTRI=opensuse VERSION=13.2 FLAVOR=DVD ARCH=x86_64 BUILD=GM
    ;;

    sled)
      # runnning all matched jobs
#        perl /usr/share/openqa/script/client isos post ISO=SLE-12-SP1-Desktop-DVD-x86_64-GM-DVD1.iso DISTRI=sle VERSION=12-sp1 FLAVOR=Desktop-DVD ARCH=x86_64 BUILD=GM

      # just run the particular test which was specified by TEST var; and vars
      # customized for TEST should also be following
        perl /usr/share/openqa/script/client jobs post ISO=SLE-12-SP1-Desktop-DVD-x86_64-GM-DVD1.iso DISTRI=sle VERSION=12-sp1 FLAVOR=Desktop-DVD ARCH=x86_64 BUILD=GM TEST=regression REGRESSION=1 HDD_1=SLED-12-SP1-GM-x86_64.qcow2 BOOT_HDD_IMAGE=1
    ;;
    
    sles)
        perl /usr/share/openqa/script/client isos post ISO=SLE-12-SP1-Server-DVD-x86_64-GM-DVD1.iso DISTRI=sle VERSION=12-SP1 FLAVOR=Server-DVD ARCH=x86_64 BUILD=GM
    ;;
esac
