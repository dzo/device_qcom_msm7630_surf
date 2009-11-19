$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)
#
# Overrides
PRODUCT_NAME := msm7630_surf
PRODUCT_DEVICE := msm7630_surf

PRODUCT_PACKAGES := \
    IM \
    VoiceDialer \
    SdkSetup \
    FM
