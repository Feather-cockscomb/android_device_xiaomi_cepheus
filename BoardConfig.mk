#
# Copyright 2022 The Android Open Source Project
#
#  Copyright (C) 2021-2022 The OrangeFox Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a73

TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_USES_64_BIT_BINDER := true
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Assert
TARGET_OTA_ASSERT_DEVICE := cepheus

# Bootloader
PRODUCT_PLATFORM := msmnile
TARGET_BOOTLOADER_BOARD_NAME := msmnile
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# Platform
TARGET_BOARD_PLATFORM := msmnile
TARGET_BOARD_PLATFORM_GPU := qcom-adreno640
QCOM_BOARD_PLATFORMS += msmnile

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 \
	androidboot.hardware=qcom \
	androidboot.console=ttyMSM0 \
	androidboot.memcg=1 \
	lpm_levels.sleep_disabled=1 \
	video=vfb:640x400,bpp=32,memsize=3072000 \
	msm_rtb.filter=0x237 \
	service_locator.enable=1 \
	swiotlb=2048 \
	androidboot.usbcontroller=a600000.dwc3 \
	earlycon=msm_geni_serial,0xa90000 \
	androidboot.usbconfigfs=true \
	androidboot.selinux=permissive

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64

BOARD_BOOTIMG_HEADER_VERSION := 1
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

# Default FS type
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4

# Prebuilt Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img

# Fstab and flags
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/fstab/recovery.fstab
PRODUCT_COPY_FILES += $(DEVICE_PATH)/fstab/twrp.flags:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/twrp.flags

# TWRP 12.1 requirements
TARGET_SUPPORTS_64_BIT_APPS := true
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_MISSING_REQUIRED_MODULES := true

# Avb
BOARD_AVB_ENABLE := true
BOARD_AVB_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_USES_METADATA_PARTITION := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := erofs
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Partitions - Dynamic
BOARD_SUPER_PARTITION_GROUPS := cepheus_dynamic_partitions
BOARD_CEPHEUS_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor system_ext odm product
BOARD_SUPER_PARTITION_SIZE := 5368709120
BOARD_SUPER_PARTITION_METADATA_DEVICE := system
BOARD_SUPER_PARTITION_BLOCK_DEVICES := system vendor
BOARD_SUPER_PARTITION_SYSTEM_DEVICE_SIZE := 3758096384
BOARD_SUPER_PARTITION_VENDOR_DEVICE_SIZE := 1610612736
BOARD_CEPHEUS_DYNAMIC_PARTITIONS_SIZE := 5364514816

BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext


# File systems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888