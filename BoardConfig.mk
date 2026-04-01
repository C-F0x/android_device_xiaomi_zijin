#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/zijin

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# Bypass
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Board
TARGET_BOOTLOADER_BOARD_NAME := zijin

# Fingerprint
TARGET_HAS_UDFPS := true

# Kernel
TARGET_KERNEL_CONFIG += vendor/zijin_QGKI.config
BOARD_KERNEL_VERSION := 5.4.302-qgki
TARGET_KERNEL_VERSION := 5.4.302-qgki

# Kernel modules
AUDIO_MOD_PATH := techpack/audio
DISPLAY_MOD_PATH := techpack/display
TOUCH_MOD_PATH := drivers/input/touchscreen
OMNI_BOOT_MODULES := \
    $(AUDIO_MOD_PATH)/dsp/adsp_loader_dlkm.ko \
    $(AUDIO_MOD_PATH)/ipc/apr_dlkm.ko \
    $(AUDIO_MOD_PATH)/dsp/q6_notifier_dlkm.ko \
    $(AUDIO_MOD_PATH)/dsp/q6_pdr_dlkm.ko \
    $(AUDIO_MOD_PATH)/soc/snd_event_dlkm.ko \
    $(AUDIO_MOD_PATH)/dsp/mmhardware_sysfs_dlkm.ko \
    $(DISPLAY_MOD_PATH)/msm/msm_drm.ko \
    $(TOUCH_MOD_PATH)/xiaomi/xiaomi_touch.ko \
    $(TOUCH_MOD_PATH)/gt9916/goodix_core.ko \
    drivers/input/fingerprint/goodix_fod/goodix_fod.ko \
    drivers/misc/hwid.ko
BOOT_KERNEL_MODULES += $(OMNI_BOOT_MODULES)
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(BOOT_KERNEL_MODULES)
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD          := $(BOOT_KERNEL_MODULES)

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Include proprietary files
include vendor/xiaomi/zijin/BoardConfigVendor.mk
