#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2013 yareg.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


# ARCHITECTURE -------------------------------------------------------------------------------------
TARGET_ARCH             := arm
TARGET_ARCH_VARIANT     := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon

TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_ABI     := armeabi-v7a
TARGET_CPU_ABI2    := armeabi
TARGET_CPU_SMP     := true

ARCH_ARM_HAVE_TLS_REGISTER        := true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true

TARGET_GLOBAL_CFLAGS   += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp


# BOARD --------------------------------------------------------------------------------------------
TARGET_BOARD_PLATFORM     := omap4
TARGET_BOARD_PLATFORM_GPU := POWERVR_SGX540_120

TARGET_BOOTLOADER_BOARD_NAME := cedarlite

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true


# KERNEL -------------------------------------------------------------------------------------------
BOARD_KERNEL_CMDLINE   := console=ttyO2,115200n8 mem=1G vmalloc=768M omap_wdt.timer_margin=30 androidboot.console=ttyO2 no_console_suspend androidboot.serialno=${androidboot.serialno} androidboot.bootloader=${androidboot.bootloader} androidboot.hardware=${androidboot.hardware} androidboot.selinux=permissive
BOARD_KERNEL_BASE      := 0x80007FC0
BOARD_KERNEL_PAGESIZE  := 2048
TARGET_PREBUILT_KERNEL := device/alcatel/cedarlite/kernel

#TARGET_KERNEL_SOURCE := kernel/alcatel/cedarlite
#TARGET_KERNEL_CONFIG := cedarlite_defconfig


# RAMDISK ------------------------------------------------------------------------------------------
TARGET_PROVIDES_INIT_TARGET_RC := true


# HWCOMPOSER ---------------------------------------------------------------------------------------
BOARD_USES_HWCOMPOSER                 := true
TARGET_HAS_WAITFORVSYNC               := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# OMAP ENHANCEMENT ---------------------------------------------------------------------------------
OMAP_ENHANCEMENT := true



# OMX ----------------------------------------------------------------------------------------------
HARDWARE_OMX := true
OMX_VENDOR := ti
#BOARD_NEEDS_CUTILS_LOG := true
#OMX_VENDOR_WRAPPER := TI_OMX_Wrapper
BOARD_OPENCORE_LIBRARIES := libOMX_Core
BOARD_OPENCORE_FLAGS := -DHARDWARE_OMX=1

BOARD_USE_TI_DUCATI_H264_PROFILE := true

COMMON_GLOBAL_CFLAGS += -DENHANCED_DOMX
ENHANCED_DOMX := true

USE_ALL_OPTIMIZED_STRING_FUNCS := true


COMMON_GLOBAL_CFLAGS += -DOMAP_ENHANCEMENT -DOMAP_ENHANCEMENT_BURST_CAPTURE


# 2D/3D GPU ----------------------------------------------------------------------------------------
BOARD_EGL_CFG       := device/alcatel/cedarlite/egl.cfg
#BOARD_USES_HGL     := true
#BOARD_USES_OVERLAY := true
USE_OPENGL_RENDERER := true


# LIGHTS -------------------------------------------------------------------------------------------
TARGET_PROVIDES_LIBLIGHTS := true


# POWERHAL -----------------------------------------------------------------------------------------
#TARGET_PROVIDES_POWERHAL := true


# WIFI ---------------------------------------------------------------------------------------------
USES_TI_MAC80211 := true

ifdef USES_TI_MAC80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wl12xx
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_wl12xx
PRODUCT_WIRELESS_TOOLS           := true
BOARD_WLAN_DEVICE                := wl12xx_mac80211
BOARD_SOFTAP_DEVICE              := wl12xx_mac80211
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wl12xx_sdio.ko"
WIFI_DRIVER_MODULE_NAME          := "wl12xx_sdio"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/firmware/ti-connectivity/wl128x-fw.bin"
WIFI_FIRMWARE_LOADER             := ""
COMMON_GLOBAL_CFLAGS             += -DUSES_TI_MAC80211
endif


# BLUETOOTH ----------------------------------------------------------------------------------------
BOARD_HAVE_BLUETOOTH := true
#BLUETI_ENHANCEMENT   := true

#ifdef BLUETI_ENHANCEMENT
#COMMON_GLOBAL_CFLAGS += -DBLUETI_ENHANCEMENT
#endif


# RIL ----------------------------------------------------------------------------------------------
TARGET_PROVIDES_LIBRIL := device/alcatel/cedarlite/prebuilt/ril/libXMM6260-ril.so
#BOARD_MODEM_TYPE       := xmm6260

# GPS ----------------------------------------------------------------------------------------------
BOARD_VENDOR_TI_GPS_HARDWARE := omap4
BOARD_GPS_LIBRARIES          := libgps


# AUDIO --------------------------------------------------------------------------------------------
BOARD_USES_GENERIC_AUDIO         := false
TARGET_PROVIDES_LIBAUDIO         := true
COMMON_GLOBAL_CFLAGS             += -DICS_AUDIO_BLOB
ICS_AUDIO_BLOB                   := true
#OARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true


# CAMERA -------------------------------------------------------------------------------------------
USE_CAMERA_STUB          := false
BOARD_USES_TI_CAMERA_HAL := true
COMMON_GLOBAL_CFLAGS     += -DDISABLE_HW_ID_MATCH_CHECK
COMMON_GLOBAL_CFLAGS     += -DICS_CAMERA_BLOB
#COMMON_GLOBAL_CFLAGS    += -DNEEDS_VECTORIMPL_SYMBOLS

# FM RADIO -----------------------------------------------------------------------------------------
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO


# WEBKIT -------------------------------------------------------------------------------------------
ENABLE_WEBGL := true


# VOLD ---------------------------------------------------------------------------------------------
#TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/f_mass_storage/lun/file"


# PARTITIONS --------------------------------------------------------------------------------------- 
TARGET_USERIMAGES_USE_EXT4         := true
BOARD_BOOTIMAGE_PARTITION_SIZE     := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 314572800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6442450944
BOARD_FLASH_BLOCK_SIZE             := 4096


# SECURITY -----------------------------------------------------------------------------------------
BOARD_USES_SECURE_SERVICES := true



# BOOTANIMATION ------------------------------------------------------------------------------------
TARGET_BOOTANIMATION_PRELOAD       := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565    := true


# RECOVERY -----------------------------------------------------------------------------------------
BOARD_HAS_NO_SELECT_BUTTON      := true
#BOARD_HAS_LARGE_FILESYSTEM     := true
BOARD_USES_MMCUTILS             := true
BOARD_USE_CUSTOM_RECOVERY_FONT  := \"roboto_15x24.h\"
BOARD_UMS_LUNFILE               := "/sys/class/android_usb/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/f_mass_storage/lun/file"
TARGET_RECOVERY_INITRC          := device/alcatel/cedarlite/recovery/init.rc
#TARGET_PREBUILT_RECOVERY_KERNEL := device/alcatel/cedarlite/recovery_kernel
TARGET_RECOVERY_FSTAB           := device/alcatel/cedarlite/ramdisk/fstab.cedarlite
RECOVERY_CHARGEMODE             := true
RECOVERY_FSTAB_VERSION          := 2


