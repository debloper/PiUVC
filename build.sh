#!/bin/bash

# Other boards will be added once the minimum viable setup seems to work with RPi Zero, which is what I'm using as the testbed for this.
BOARD=${$1:-raspberrypi0}

# $CONFIG_ is used as the config prefix in the custom buildroot configurations merger script
# $KCONFIG_CONFIG is the merged config; can also be set with -O option of the script (but that's not the recommended method)
# `configs/config` file is the base configuration, whereas board specific configurations get applied/overridden by `configs/$BOARD` options
CONFIG_="BR2" KCONFIG_CONFIG="configs/${BOARD}_defconfig" "buildroot/support/kconfig/merge_config.sh" -m -r configs/config "configs/$BOARD"

# Generate buildroot configuration definition
BR2_EXTERNAL="$(pwd)" make O="$(pwd)/output/$BOARD" -C buildroot "${BOARD}_defconfig"

# Build image
make -C "output/$BOARD" all
