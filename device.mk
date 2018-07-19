#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/xiaomi/tiare/tiare-vendor.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# AID/fs configs
PRODUCT_PACKAGES += \
    fs_config_files

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default

# Common init scripts
PRODUCT_PACKAGES += \
    init.qcom.rc

# Display
PRODUCT_PACKAGES += \
    libvulkan

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# IMS
PRODUCT_PACKAGES += \
    ims-ext-common

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Power
PRODUCT_PACKAGES += \
    power.qcom

# QTI
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml \
    $(LOCAL_PATH)/permissions/privapp-permissions-qti.xml:system/etc/permissions/privapp-permissions-qti.xml

# RCS
PRODUCT_PACKAGES += \
    rcs_service_aidl \
    rcs_service_aidl.xml \
    rcs_service_api \
    rcs_service_api.xml

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# VNDK
PRODUCT_PACKAGES += \
    vndk_package

# VNDK-SP
PRODUCT_PACKAGES += \
    vndk-sp
