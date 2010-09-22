PRODUCT_PACKAGES := \
    IM \
    VoiceDialer \
    FM


$(call inherit-product, build/target/product/generic.mk)

#Enabling Ring Tones
include frameworks/base/data/sounds/OriginalAudio.mk

# Overrides
PRODUCT_BRAND := qcom
PRODUCT_NAME := msm7630_surf
PRODUCT_DEVICE := msm7630_surf

PRODUCT_PROPERTY_OVERRIDES := \
    ro.opengles.version=131072
