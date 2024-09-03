#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from dizi device
$(call inherit-product, device/xiaomi/dizi/device.mk)

PRODUCT_DEVICE := dizi
PRODUCT_NAME := omni_dizi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := dizi
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dizi-user 12 SKQ1.231214.001 V816.0.15.0.UNSCNXM release-keys"

BUILD_FINGERPRINT := Redmi/dizi/dizi:12/SKQ1.231214.001/V816.0.15.0.UNSCNXM:user/release-keys
