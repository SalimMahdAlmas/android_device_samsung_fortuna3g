# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/full_fortuna3g.mk)

PRODUCT_RELEASE_NAME := fortuna3g

# Setup device configuration
PRODUCT_NAME := cm_fortuna3g
PRODUCT_DEVICE := fortuna3g
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SM-G530H

# Extra overlay for HDPI
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/hdpi

