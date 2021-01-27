#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/go_defaults.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from tiare device.
$(call inherit-product, device/xiaomi/tiare/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_tiare
PRODUCT_DEVICE := tiare
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Go
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Xiaomi/tiare/tiare:8.1.0/OPM1.171019.026/V10.2.22.0.OCLMIXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tiare-user 8.1.0 OPM1.171019.026 V10.2.22.0.OCLMIXM release-keys" \
    PRODUCT_NAME="tiare" \
    TARGET_DEVICE="tiare"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
