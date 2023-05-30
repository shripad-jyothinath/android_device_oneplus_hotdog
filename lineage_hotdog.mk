#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hotdog device
$(call inherit-product, device/oneplus/hotdog/device.mk)

<<<<<<< HEAD:lineage_hotdog.mk
# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
=======
# Inherit some common Cherish stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

#Cherish Flags
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
EXTRA_UDFPS_ANIMATIONS := false
IS_PHONE := true
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_BUILD_APERTURE_CAMERA := false
TARGET_BUILD_GRAPHENEOS_CAMERA := true
TARGET_ENABLE_BLUR := true

# Maintainer Flag
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=Shripad Gamer

# Unofficial
CHERISH_MAINTAINER := Shripad
CHERISH_BUILD_TYPE := UNOFFICIAL
BUILD_USERNAME := Shripad
BUILD_HOSTNAME := Cherish
>>>>>>> 1d6a64f (Cherish OS bringup):cherish_hotdog.mk

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_hotdog
PRODUCT_DEVICE := hotdog
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := HD1911
PRODUCT_BRAND := OnePlus

PRODUCT_SYSTEM_NAME := OnePlus7TPro
PRODUCT_SYSTEM_DEVICE := OnePlus7TPro

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus7TPro-user 12 SKQ1.211113.001 Q.202212132005 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus7TPro/OnePlus7TPro:12/SKQ1.211113.001/Q.202212132005:user/release-keys
