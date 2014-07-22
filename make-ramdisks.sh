#!/bin/sh

BASE=../../../out/target/product/cedarlite

cd $BASE

mkimage -T ramdisk -A 'ARM' -C none -n 'ramdisk' -a 0x81000000 -e 0x81000000 -d ramdisk.img boot-cedarlite.img

mkimage -T ramdisk -A 'ARM' -C none -n 'ramdisk' -a 0x81000000 -e 0x81000000 -d ramdisk-recovery.img recovery-cedarlite.img

