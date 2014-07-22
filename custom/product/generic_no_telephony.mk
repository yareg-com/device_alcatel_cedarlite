#
# Copyright (C) 2007 The Android Open Source Project
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

# This is a generic phone product that isn't specialized for a specific device.
# It includes the base Android platform.

PRODUCT_POLICY := android.policy_phone

PRODUCT_PACKAGES := \
    DeskClock \
<<<<<<< HEAD
    Bluetooth \
    Calculator \
#    Calendar \
#    Camera2 \
    CertInstaller \
    Email \
    Exchange2 \
    FusedLocation \
    Gallery2 \
    InputDevices \
    Keyguard \
    LatinIME \
    Launcher2 \
#    Music \
#    OneTimeInitializer \
    PrintSpooler \
    Provision \
    Settings \
    SystemUI \
    TeleService \
    CalendarProvider \
    bluetooth-health \
    hostapd \
    wpa_supplicant.conf \
    WallpaperCropper

PRODUCT_PACKAGES += \
    audio \
    clatd \
    clatd.conf \
    dhcpcd.conf \
    network \
    pand \
    pppd \
    sdptool \
    wpa_supplicant
=======
    AlarmProvider \
    Bluetooth \
    Calculator \
    Calendar \
    CertInstaller \
    Email \
    Exchange \
    Gallery2 \
    LatinIME \
    Launcher2 \
    Music \
    Provision \
    Phone \
    Settings \
    Sync \
    SystemUI \
    Updater \
    CalendarProvider \
    SyncProvider \
    bluetooth-health \
    hostapd \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    icu.dat
>>>>>>> 19db8e59b86a825ffd157b213f86663510e2c6dc

PRODUCT_PACKAGES += \
    librs_jni

PRODUCT_PACKAGES += \
    audio.primary.default \
<<<<<<< HEAD
    audio_policy.default \
    local_time.default \
    power.default

PRODUCT_PACKAGES += \
    local_time.default

PRODUCT_COPY_FILES := \
        frameworks/av/media/libeffects/data/audio_effects.conf:system/etc/audio_effects.conf

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=unknown

$(call inherit-product-if-exists, frameworks/base/data/fonts/fonts.mk)
$(call inherit-product-if-exists, external/noto-fonts/fonts.mk)
$(call inherit-product-if-exists, external/naver-fonts/fonts.mk)
$(call inherit-product-if-exists, external/sil-fonts/fonts.mk)
$(call inherit-product-if-exists, frameworks/base/data/keyboards/keyboards.mk)
$(call inherit-product-if-exists, frameworks/webview/chromium/chromium.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)

# Overrides
PRODUCT_BRAND := generic
PRODUCT_DEVICE := generic
PRODUCT_NAME := generic_no_telephony
=======
    audio_policy.default

PRODUCT_COPY_FILES := \
        system/bluetooth/data/audio.conf:system/etc/bluetooth/audio.conf \
        system/bluetooth/data/auto_pairing.conf:system/etc/bluetooth/auto_pairing.conf \
        system/bluetooth/data/blacklist.conf:system/etc/bluetooth/blacklist.conf \
        system/bluetooth/data/input.conf:system/etc/bluetooth/input.conf \
        system/bluetooth/data/network.conf:system/etc/bluetooth/network.conf \
        frameworks/base/media/libeffects/data/audio_effects.conf:system/etc/audio_effects.conf

$(call inherit-product-if-exists, frameworks/base/data/fonts/fonts.mk)
$(call inherit-product-if-exists, external/lohit-fonts/fonts.mk)
$(call inherit-product-if-exists, frameworks/base/data/keyboards/keyboards.mk)

PRODUCT_PACKAGES += \
    ApplicationsProvider \
    BackupRestoreConfirmation \
    Contacts \
    ContactsProvider \
    DefaultContainerService \
    DownloadProvider \
    DownloadProviderUi \
    HTMLViewer \
    Home \
    KeyChain \
    MediaProvider \
    PackageInstaller \
    SettingsProvider \
    SharedStorageBackup \
    TelephonyProvider \
    UserDictionaryProvider \
    VpnDialogs \
    apache-xml \
    bouncycastle \
    bu \
    cacerts \
    com.android.location.provider \
    com.android.location.provider.xml \
    core \
    core-junit \
    dalvikvm \
    dexdeps \
    dexdump \
    dexlist \
    dexopt \
    dmtracedump \
    dx \
    ext \
    filterfw \
    framework-res \
    hprof-conv \
    icu.dat \
    installd \
    ip \
    ip-up-vpn \
    ip6tables \
    iptables \
    libOpenMAXAL \
    libOpenSLES \
    libaudiopreprocessing \
    libcrypto \
    libdvm \
    libexpat \
    libfilterfw \
    libfilterpack_imageproc \
    libgabi++ \
    libicui18n \
    libicuuc \
    libnativehelper \
    libnfc_ndef \
    libpowermanager \
    libspeexresampler \
    libsqlite_jni \
    libssl \
    libstagefright_soft_h264dec \
    libstagefright_soft_aacdec \
    libstagefright_soft_amrdec \
    libstagefright_soft_g711dec \
    libstagefright_soft_mp3dec \
    libstagefright_soft_mpeg4dec \
    libstagefright_soft_vorbisdec \
    libstagefright_soft_vpxdec \
    libvariablespeed \
    libwebrtc_audio_preprocessing \
    libwilhelm \
    libz \
    screencap \
    sensorservice
>>>>>>> 19db8e59b86a825ffd157b213f86663510e2c6dc
