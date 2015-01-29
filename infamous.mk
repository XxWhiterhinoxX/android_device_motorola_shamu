# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common infamous stuff.
$(call inherit-product, vendor/infamous/config/common_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/infamous/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/shamu/aosp_shamu.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/shamu/overlay-infamous

## Device identifier. This must come after all inclusions
PRODUCT_NAME := infamous_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:5.0.1/LRX22C/1602158:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 5.0.1 LRX22C 1602158 release-keys"
