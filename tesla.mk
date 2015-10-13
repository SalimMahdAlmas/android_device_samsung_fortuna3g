# Inherit some common TeslaOS stuff.
$(call inherit-product, vendor/tesla/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/full_fortuna3g.mk)

PRODUCT_RELEASE_NAME := fortuna3g

# Setup device configuration
PRODUCT_NAME := tesla_fortuna3g
PRODUCT_DEVICE := fortuna3g
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SM-G530H
