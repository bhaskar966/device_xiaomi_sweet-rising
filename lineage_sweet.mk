#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit common RisingOS Stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
PRODUCT_NAME := lineage_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

RISING_CHIPSET := SM6150
RISING_MAINTAINER := 𝙱𝚑𝚊𝚜𝚔𝚊𝚛
RISING_PACKAGE_TYPE := "VANILLA"

# Aperture Camera
TARGET_BUILD_APERTURE_CAMERA := true

# Blur support
TARGET_ENABLE_BLUR := true

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := false

# Spoof build description/fingerprint as pixel device
TARGET_USE_PIXEL_FINGERPRINT := true

# Default GMS flags sets
WITH_GMS := false
TARGET_CORE_GMS := false
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_CORE_GMS_EXTRAS := false
