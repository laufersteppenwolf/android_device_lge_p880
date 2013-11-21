# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/p880/full_p880.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit GSM common stuff
#$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Mako Overlay
DEVICE_PACKAGE_OVERLAYS += device/lge/p880/overlay

# Setup device specific product configuration
PRODUCT_NAME := aokp_p880
PRODUCT_BRAND := lge
PRODUCT_DEVICE := p880
PRODUCT_MODEL := Optimus 4x HD
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=x3 BUILD_FINGERPRINT=google/x3/p880:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="x3-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip

