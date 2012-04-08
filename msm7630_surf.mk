PRODUCT_PROPERTY_OVERRIDES += \
        dalvik.vm.heapstartsize=5m \
        dalvik.vm.heapgrowthlimit=48m \
        dalvik.vm.heapsize=128m

$(call inherit-product, device/qcom/common/common.mk)

PRODUCT_LOCALES := en_US fr_FR it_IT es_ES de_DE nl_NL cs_CZ pl_PL ja_JP zh_TW zh_CN ru_RU ko_KR nb_NO es_US da_DK el_GR tr_TR pt_PT pt_BR rm_CH sv_SE bg_BG ca_ES en_GB fi_FI hi_IN hr_HR hu_HU in_ID iw_IL lt_LT lv_LV ro_RO sk_SK sl_SI sr_RS uk_UA vi_VN tl_PH ar_EG fa_IR th_TH sw_TZ ms_MY af_ZA zu_ZA am_ET hi_IN 
PRODUCT_LOCALES += hdpi

PRODUCT_NAME := msm7630_surf
PRODUCT_DEVICE := msm7630_surf

PRODUCT_PACKAGES += Galaxy4
PRODUCT_PACKAGES += HoloSpiralWallpaper
PRODUCT_PACKAGES += MagicSmokeWallpapers
PRODUCT_PACKAGES += NoiseField
PRODUCT_PACKAGES += PhaseBeam
PRODUCT_PACKAGES += strace
PRODUCT_PACKAGES += busybox Superuser libhwrpc.so oem_rpc_svc lib_driver_cmd_wext libjni_pinyinime fm_qsoc_patches btwlancoex PinyinIME

DEVICE_PACKAGE_OVERLAYS := \
    device/qcom/msm7630_surf/overlay

