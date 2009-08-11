PRODUCT_PACKAGES := \
    IM \
    VoiceDialer \
    SdkSetup \
    FM


$(call inherit-product, build/target/product/generic_with_google.mk)

TARGET_GLOBAL_CPPFLAGS += -DDUMMY12345

# Overrides
PRODUCT_NAME := msm7630_surf
PRODUCT_DEVICE := msm7630_surf
