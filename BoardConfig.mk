# Copyright (c) 2009, Code Aurora Forum.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# config.mk
#
# Product-specific compile-time definitions.
#

ifeq ($(QC_PROP),true)
    BOARD_USES_QCOM_HARDWARE := true
    BOARD_USES_ADRENO_200 := true
    BOARD_USES_QCOM_AUDIO_V2 := true

    ifneq ($(BUILD_TINY_ANDROID), true)
    BOARD_CAMERA_LIBRARIES := libcamera
    BOARD_HAVE_BLUETOOTH := true
    BOARD_USE_BM3_FULLSTACK := true
    BOARD_WPA_SUPPLICANT_DRIVER := WEXT
    endif   # !BUILD_TINY_ANDROID

else
    BOARD_USES_GENERIC_AUDIO := true
    USE_CAMERA_STUB := true

endif # QC_PROP


TARGET_NO_BOOTLOADER := false
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv7-a
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_HARDWARE_3D := false
TARGET_BOARD_PLATFORM := msm7k

BOARD_KERNEL_BASE    := 0x00200000
BOARD_NAND_PAGE_SIZE := 4096

TARGET_USERIMAGES_USE_EXT2 := true

BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=qcom
BOARD_EGL_CFG := vendor/qcom/$(TARGET_PRODUCT)/egl.cfg
