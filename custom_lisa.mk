#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from zijin device
$(call inherit-product, device/xiaomi/zijin/device.mk)

# Inherit some common PixelOS stuff.
$(call inherit-product, vendor/custom/config/common_full_phone.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := zijin
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2109119BC
PRODUCT_NAME := custom_zijin

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="zijin_cn-user 14 UKQ1.231108.001 V816.0.12.0.ULPCNXM release-keys" \
    BuildFingerprint=Xiaomi/zijin_cn/missi:14/UKQ1.231108.001/V816.0.12.0.ULPCNXM:user/release-keys
    DeviceProduct=zijin \
    SystemName=zijin_cn
