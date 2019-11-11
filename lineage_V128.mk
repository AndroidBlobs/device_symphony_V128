# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from V128 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := symphony
PRODUCT_DEVICE := V128
PRODUCT_MANUFACTURER := symphony
PRODUCT_NAME := lineage_V128
PRODUCT_MODEL := V128

PRODUCT_GMS_CLIENTID_BASE := android-symphony
TARGET_VENDOR := symphony
TARGET_VENDOR_PRODUCT_NAME := V128
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="V128-user 8.1.0 O21019 1548226727 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := SYMPHONY/V128/V128:8.1.0/O21019/1548226727:user/release-keys
