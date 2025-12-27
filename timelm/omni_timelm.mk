#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from timelm device
$(call inherit-product, device/lge/timelm/device.mk)

PRODUCT_DEVICE := timelm
PRODUCT_NAME := omni_timelm
PRODUCT_BRAND := lge
PRODUCT_MODEL := LM-V600
PRODUCT_MANUFACTURER := lge

PRODUCT_GMS_CLIENTID_BASE := android-lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fox_timelm-eng 12 SP2A.220405.004 eng.erickg.20221006.130902 test-keys"

BUILD_FINGERPRINT := lge/fox_timelm/timelm:12/SP2A.220405.004/erickg10061308:eng/test-keys
