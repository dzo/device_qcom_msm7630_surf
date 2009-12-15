PRODUCT_PACKAGES := \
    IM \
    VoiceDialer \
    SdkSetup \
    FM


$(call inherit-product, build/target/product/generic.mk)

#Enabling Ring Tones
include frameworks/base/data/sounds/OriginalAudio.mk

# Overrides
PRODUCT_BRAND := qcom
PRODUCT_NAME := msm7630_surf
PRODUCT_DEVICE := msm7630_surf
