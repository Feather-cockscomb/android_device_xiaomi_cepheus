#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
# fox_12.1/vendor/recovery/orangefox_build_vars.txt

	export TW_DEFAULT_LANGUAGE="zh_CN"
	export LC_ALL="C"
	export ALLOW_MISSING_DEPENDENCIES=true
	export OF_MAINTAINER=Yeliqin666
	export FOX_VERSION=$(date +%y.%m.%d)
	export FOX_VARIANT=TEST_TIK
	export FOX_REPLACE_TOOLBOX_GETPROP=1
	export FOX_USE_TAR_BINARY=1
	export OF_NO_RELOAD_AFTER_DECRYPTION=1
	export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
	export FOX_USE_BASH_SHELL=1
	export FOX_ASH_IS_BASH=1
	export FOX_USE_GREP_BINARY=1
	export FOX_USE_SED_BINARY=1
	export FOX_DELETE_AROMAFM=1
	export USE_CAF_KERNEL=1
	export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
	export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"
	export FOX_DISABLE_UPDATEZIP=1
	export FOX_USE_XZ_UTILS=1
	export FOX_USE_NANO_EDITOR=1
	export OF_ENABLE_LPTOOLS=1
	export OF_USE_GREEN_LED=0
	export OF_SCREEN_H=2560
	export OF_ALLOW_DISABLE_NAVBAR=0
	export FOX_BUGGED_AOSP_ARB_WORKAROUND="1546300800"; # Tuesday, January 1, 2019 12:00:00 AM GMT+00:00
	export OF_QUICK_BACKUP_LIST="/boot;/data;"
	export FOX_PATCH_VBMETA_FLAG=1
	export FOX_VIRTUAL_AB_DEVICE=1
	export OF_DYNAMIC_FULL_SIZE=9126805504
	export OF_UNBIND_SDCARD_F2FS=1
	export OF_NO_REFLASH_CURRENT_ORANGEFOX=1
	export OF_DEFAULT_TIMEZONE="TAIST-8;TAIDT"

	F=$(find "device" -name "cepheus")

	\cp -fp bootable/recovery/gui/theme/portrait_hdpi/splash.xml "$F"/recovery/root/twres/splash.xml
	sed -i 's/background color="#D34E38"/background color="#000000"/g' "$F"/recovery/root/twres/splash.xml
	sed -i 's/fill color="#FF8038"/fill color="#000000"/g' "$F"/recovery/root/twres/splash.xml

	echo -e "\x1b[96mnabu: orangeFox Var添加完毕！\x1b[m"
