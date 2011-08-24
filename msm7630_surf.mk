$(call inherit-product, device/qcom/common/common.mk)
$(call inherit-product-if-exists, vendor/qcom/proprietary/tools/google/gingerbread/products/mini-gms.mk)

PRODUCT_NAME := msm7630_surf
PRODUCT_DEVICE := msm7630_surf

PRODUCT_PROPERTY_OVERRIDES += \
 ro.com.google.clientidbase=android-qualcomm
