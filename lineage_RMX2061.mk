# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
TARGET_BOOT_ANIMATION_RES := 1200
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from RMX2061 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := realme
PRODUCT_DEVICE := RMX2061
PRODUCT_MANUFACTURER := realme
PRODUCT_NAME := lineage_RMX2061
PRODUCT_MODEL := Realme 6 Pro

PRODUCT_GMS_CLIENTID_BASE := android-realme
TARGET_VENDOR := realme
TARGET_VENDOR_PRODUCT_NAME := RMX2061
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="atoll-user 10 RMX2063_11_A.27 release-keys"
    DEVICE_MAINTAINERS="Ctarchik"
    
# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := realme/RMX2063RU/RMX2063L1:10/QKQ1.191222.002/1589834385:user/release-keys
