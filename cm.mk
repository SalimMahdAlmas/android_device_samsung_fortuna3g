# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device_fortuna3g.mk)

PRODUCT_RELEASE_NAME := fortunave3g

# Setup device configuration
PRODUCT_NAME := cm_fortuna3g
PRODUCT_DEVICE := fortuna3g
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SM-G530H

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=samsung/fortunave3gxx/fortunave3g:4.4.4/KTU84P/G530HDCU1AOA2:user/release-keys PRIVATE_BUILD_DESC="fortunave3gxx-user 4.4.4 KTU84P G530HDCU1AOA2 release-keys"


