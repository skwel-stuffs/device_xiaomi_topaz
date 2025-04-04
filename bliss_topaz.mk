#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from topaz device
$(call inherit-product, device/xiaomi/topaz/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

PRODUCT_NAME := bliss_topaz
PRODUCT_DEVICE := topaz
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 12 4G

PRIVATE_BUILD_DESC := topaz_global-user 14 UKQ1.230917.001 V816.0.7.0.UMGMIXM release-keys
BUILD_FINGERPRINT := Redmi/topaz_global/topaz:14/UKQ1.230917.001/V816.0.7.0.UMGMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
