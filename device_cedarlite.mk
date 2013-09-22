#
# Copyright (C) 2012 The Android Open-Source Project
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


# OVERLAY ------------------------------------------------------------------------------------------

DEVICE_PACKAGE_OVERLAYS := device/alcatel/cedarlite/overlay


# XHDPI --------------------------------------------------------------------------------------------

PRODUCT_AAPT_CONFIG      := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi


# CHARGER ------------------------------------------------------------------------------------------

#PRODUCT_PACKAGES := \
#	charger \
#	charger_res_images


# CAMERA -------------------------------------------------------------------------------------------

PRODUCT_PACKAGES := \
    Camera

# PowerHAL
#PRODUCT_PACKAGES += \
#	power.cedarlite \
#	hwcomposer.cedarlite \
#	libion_ti


# RAMDISK ------------------------------------------------------------------------------------------

PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/ramdisk/fstab.cedarlite:root/fstab.cedarlite \
    $(LOCAL_PATH)/ramdisk/init.cedarlite.rc:root/init.cedarlite.rc \
    $(LOCAL_PATH)/ramdisk/init.cedarlite.usb.rc:root/init.cedarlite.usb.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.cedarlite.rc:root/ueventd.cedarlite.rc


# VOLD ---------------------------------------------------------------------------------------------

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab


# KEY MAPS -----------------------------------------------------------------------------------------

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/input/omap4-keypad.kl:system/usr/keylayout/omap4-keypad.kl \
    $(LOCAL_PATH)/prebuilt/input/omap4-keypad.kcm:system/usr/keychars/omap4-keypad.kcm \
    $(LOCAL_PATH)/prebuilt/input/twl6030_pwrbutton.kl:system/usr/keylayout/twl6030_pwrbutton.kl


# TOUCHSCREEN --------------------------------------------------------------------------------------

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/input/ft5x0x_ts.idc:system/usr/idc/ft5x0x_ts.idc


# PERMISSIONS --------------------------------------------------------------------------------------

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml


# POWERVR_SGX540_120 GPU ---------------------------------------------------------------------------

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/gpu/libEGL_POWERVR_SGX540_120.so:system/vendor/lib/egl/libEGL_POWERVR_SGX540_120.so \
    $(LOCAL_PATH)/prebuilt/gpu/libGLESv1_CM_POWERVR_SGX540_120.so:system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \
    $(LOCAL_PATH)/prebuilt/gpu/libGLESv2_POWERVR_SGX540_120.so:system/vendor/lib/egl/libGLESv2_POWERVR_SGX540_120.so \
    $(LOCAL_PATH)/prebuilt/gpu/libIMGegl.so:system/vendor/lib/libIMGegl.so \
    $(LOCAL_PATH)/prebuilt/gpu/libPVRScopeServices.so:system/vendor/lib/libPVRScopeServices.so \
    $(LOCAL_PATH)/prebuilt/gpu/libglslcompiler.so:system/vendor/lib/libglslcompiler.so \
    $(LOCAL_PATH)/prebuilt/gpu/libpvr2d.so:system/vendor/lib/libpvr2d.so \
    $(LOCAL_PATH)/prebuilt/gpu/libpvrANDROID_WSEGL.so:system/vendor/lib/libpvrANDROID_WSEGL.so \
    $(LOCAL_PATH)/prebuilt/gpu/libsrv_init.so:system/vendor/lib/libsrv_init.so \
    $(LOCAL_PATH)/prebuilt/gpu/libsrv_um.so:system/vendor/lib/libsrv_um.so \
    $(LOCAL_PATH)/prebuilt/gpu/libusc.so:system/vendor/lib/libusc.so \
    $(LOCAL_PATH)/prebuilt/gpu/pvrsrvinit:system/vendor/bin/pvrsrvinit

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/gpu/gralloc.omap4.so:system/vendor/lib/hw/gralloc.omap4.so \
    $(LOCAL_PATH)/prebuilt/gpu/hwcomposer.omap4.so:system/vendor/lib/hw/hwcomposer.omap4.so


# CAMERA -------------------------------------------------------------------------------------------

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/camera/R2_MVEN000_LD0_ND0_IR0_SH0_FL0_SVEN000_DCCID1043/cid1043_ov2655_capabilities.bin:system/vendor/misc/camera/R2_MVEN000_LD0_ND0_IR0_SH0_FL0_SVEN000_DCCID1043/cid1043_ov2655_capabilities.bin \
    $(LOCAL_PATH)/prebuilt/camera/R2_MVEN000_LD0_ND0_IR0_SH0_FL0_SVEN000_DCCID1043/cid1043_ov2655_ducati_nsf_ldc.bin:system/vendor/misc/camera/R2_MVEN000_LD0_ND0_IR0_SH0_FL0_SVEN000_DCCID1043/cid1043_ov2655_ducati_nsf_ldc.bin \
    $(LOCAL_PATH)/prebuilt/camera/R2_MVEN000_LD0_ND0_IR0_SH0_FL0_SVEN000_DCCID1043/cid1043_ov2655_face_detect_dcc.bin:system/vendor/misc/camera/R2_MVEN000_LD0_ND0_IR0_SH0_FL0_SVEN000_DCCID1043/cid1043_ov2655_face_detect_dcc.bin \
    $(LOCAL_PATH)/prebuilt/camera/R2_MVEN000_LD0_ND0_IR0_SH0_FL0_SVEN000_DCCID1043/cid1043_ov2655_face_tracking_dcc.bin:system/vendor/misc/camera/R2_MVEN000_LD0_ND0_IR0_SH0_FL0_SVEN000_DCCID1043/cid1043_ov2655_face_tracking_dcc.bin \
    $(LOCAL_PATH)/prebuilt/camera/R2_MVEN000_LD0_ND0_IR0_SH0_FL0_SVEN000_DCCID1043/cid1043_ov2655_ldc_cfg_dcc.bin:system/vendor/misc/camera/R2_MVEN000_LD0_ND0_IR0_SH0_FL0_SVEN000_DCCID1043/cid1043_ov2655_ldc_cfg_dcc.bin \
    $(LOCAL_PATH)/prebuilt/camera/R2_MVEN000_LD0_ND0_IR0_SH0_FL0_SVEN000_DCCID1043/cid1043_ov2655_vnf_cfg_dcc.bin:system/vendor/misc/camera/R2_MVEN000_LD0_ND0_IR0_SH0_FL0_SVEN000_DCCID1043/cid1043_ov2655_vnf_cfg_dcc.bin \
    $(LOCAL_PATH)/prebuilt/camera/ducati-m3.bin:system/vendor/firmware/ducati-m3.bin \
    $(LOCAL_PATH)/prebuilt/camera/proprietary-version.txt:system/vendor/firmware/proprietary-version.txt


# GPS ----------------------------------------------------------------------------------------------

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/gps/gps.omap4.so:system/lib/hw/gps.omap4.so \
    $(LOCAL_PATH)/prebuilt/gps/libgps.so:system/lib/libgps.so \
	$(LOCAL_PATH)/prebuilt/gps/libgpsservices.so:system/lib/libgpsservices.so \
	$(LOCAL_PATH)/prebuilt/gps/libmcphalgps.so:system/lib/libmcphalgps.so \
	$(LOCAL_PATH)/prebuilt/gps/libsupllocationprovider.so:system/lib/libsupllocationprovider.so
	

# LIGHTS -------------------------------------------------------------------------------------------
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/lights/lights.omap4.so:system/lib/hw/lights.omap4.so


# SENSORS ------------------------------------------------------------------------------------------
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/sensors/sensors.omap4.so:system/lib/hw/sensors.omap4.so \
    $(LOCAL_PATH)/prebuilt/compass/akmd8975:system/bin/akmd8975


# KERNEL MODULES -----------------------------------------------------------------------------------

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/modules/cfg80211.ko:system/lib/modules/cfg80211.ko \
    $(LOCAL_PATH)/prebuilt/modules/compat.ko:system/lib/modules/compat.ko \
    $(LOCAL_PATH)/prebuilt/modules/gps_drv.ko:system/lib/modules/gps_drv.ko \
    $(LOCAL_PATH)/prebuilt/modules/lib80211.ko:system/lib/modules/lib80211.ko \
    $(LOCAL_PATH)/prebuilt/modules/mac80211.ko:system/lib/modules/mac80211.ko \
    $(LOCAL_PATH)/prebuilt/modules/wl12xx.ko:system/lib/modules/wl12xx.ko \
    $(LOCAL_PATH)/prebuilt/modules/wl12xx_sdio.ko:system/lib/modules/wl12xx_sdio.ko


# CUSTOM BOOTANIMATION -----------------------------------------------------------------------------

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip


# RIL ----------------------------------------------------------------------------------------------

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/ril/libXMM6260-ril.so:system/lib/libXMM6260-ril.so


# AUDIO --------------------------------------------------------------------------------------------

PRODUCT_PACKAGES += \
    libaudioutils \
    audio.a2dp.default \
    tinymix \
    tinyplay \
    tinycap

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/audio/audio.primary.cedarlite.so:system/lib/hw/audio.primary.cedarlite.so \
    $(LOCAL_PATH)/prebuilt/audio/audio_policy.default.so:system/lib/hw/audio_policy.default.so


# FILESYSTEM ---------------------------------------------------------------------------------------

PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs


# WIFI ---------------------------------------------------------------------------------------------

WIFI_BAND := 802_11_ABG

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/wifi/wl1271-nvs.bin:system/etc/firmware/ti-connectivity/wl1271-nvs.bin \
    $(LOCAL_PATH)/prebuilt/wifi/wl1271-nvs_127x.bin:system/etc/firmware/ti-connectivity/wl1271-nvs_127x.bin \
    $(LOCAL_PATH)/prebuilt/wifi/wl127x-fw-4-mr.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin \
    $(LOCAL_PATH)/prebuilt/wifi/wl127x-fw-4-plt.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin \
    $(LOCAL_PATH)/prebuilt/wifi/wl127x-fw-4-sr.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin \
    $(LOCAL_PATH)/prebuilt/wifi/wl128x-fw-4-mr.bin:system/etc/firmware/ti-connectivity/wl128x-fw-4-mr.bin \
    $(LOCAL_PATH)/prebuilt/wifi/wl128x-fw-4-plt.bin:system/etc/firmware/ti-connectivity/wl128x-fw-4-plt.bin \
    $(LOCAL_PATH)/prebuilt/wifi/wl128x-fw-4-sr.bin:system/etc/firmware/ti-connectivity/wl128x-fw-4-sr.bin \
    $(LOCAL_PATH)/prebuilt/wifi/wl128x-fw.bin:system/etc/firmware/ti-connectivity/wl128x-fw.bin

PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd.conf \
    wifical.sh \
    TQS_D_1.7.ini \
    TQS_D_1.7_127x.ini \
    crda \
    regulatory.bin \
    hostapd \
    hostapd_cli \
    calibrator \
    iw


# BLUETOOTH ----------------------------------------------------------------------------------------

PRODUCT_PACKAGES += \
    hciconfig \
    hcitool


# SMC ----------------------------------------------------------------------------------------------
#PRODUCT_PACKAGES += \
#	smc_pa.ift \
#	smc_normal_world_android_cfg.ini \
#	libsmapi.so \
#	libtf_crypto_sst.so \
#	libtfsw_jce_provider.so \
#	tfsw_jce_provider.jar \
#	tfctrl


# PREBUILT APPS ------------------------------------------------------------------------------------

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/apps/FileManager.apk:system/app/FileManager.apk \
	$(LOCAL_PATH)/prebuilt/apps/Firefox.apk:system/app/Firefox.apk


# TORCH --------------------------------------------------------------------------------------------

PRODUCT_PACKAGES += \
    Torch


# USB ----------------------------------------------------------------------------------------------

PRODUCT_PACKAGES += \
    com.android.future.usb.accessory


# DALVIK -------------------------------------------------------------------------------------------

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=32m \
    dalvik.vm.heapgrowthlimit=64m \
    dalvik.vm.heapsize=384m \
    dalvik.vm.heaputilization=0.25 \
    dalvik.vm.heapidealfree=8388608 \
    dalvik.vm.heapconcurrentstart=2097152 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.dexopt-data-only=1 \
    dalvik.vm.verify_bytecode=false


# OVERRIDES ----------------------------------------------------------------------------------------

PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    ro.opengles.version=131072 \
    hwui.render_dirty_regions=false \
    net.dns1=8.8.8.8 \
    net.dns2=8.8.4.4 \
    ro.hwui.disable_scissor_opt=true \
    ro.factory.mode=0

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0


# ADB ROOT -----------------------------------------------------------------------------------------

ADDITIONAL_DEFAULT_PROPERTIES := \
    ro.secure=0 \
    ro.adb.secure=0


# TAGS ---------------------------------------------------------------------------------------------

PRODUCT_TAGS += dalvik.gc.type-precise


# FRAMEWORK ----------------------------------------------------------------------------------------

#$(call inherit-product, frameworks/base/build/phone-xhdpi-1024-dalvik-heap.mk)


# OMAP4 HARDWARE -----------------------------------------------------------------------------------

$(call inherit-product, hardware/ti/omap4xxx/omap4.mk)
#$(call inherit-product, device/alcatel/cedarlite/graphics/sgx-imgtec-bins.mk)
#$(call inherit-product-if-exists, hardware/ti/wpan/ti-wpan-products.mk)
#$(call inherit-product-if-exists, device/ti/proprietary-open/wl12xx/wlan/wl12xx-wlan-fw-products.mk)


# PRODUCT ------------------------------------------------------------------------------------------

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

