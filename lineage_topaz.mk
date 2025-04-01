#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from topaz device
$(call inherit-product, device/xiaomi/topaz/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)


# Lunch banner maintainer variable
RISING_MAINTAINER="Haruki x skwel"

# Chipset/Maintainer properties (ro.rising.chipset/ro.rising.maintainer) 
# Set RISING_MAINTAINER for version control 
# (Optional if builder is setting properties via init_<device>.cpp)
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon 685" \
    RisingMaintainer="Haruki x skwel"

PRODUCT_NAME := lineage_topaz
PRODUCT_DEVICE := topaz
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 12 4G

PRIVATE_BUILD_DESC := topaz_global-user 15 AQ3A.240829.003 OS2.0.9.0.VMGMIXM release-keys
BUILD_FINGERPRINT := Redmi/topaz_global/topaz:13/TKQ1.221114.001/OS2.0.9.0.VMGMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
