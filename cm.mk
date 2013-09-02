# CEDARLITE ----------------------------------------------------------------------------------------
$(call inherit-product, device/alcatel/cedarlite/device_cedarlite.mk)


# GSM ----------------------------------------------------------------------------------------------
$(call inherit-product, vendor/cm/config/gsm.mk)


# FULL PHONE ---------------------------------------------------------------------------------------
$(call inherit-product, vendor/cm/config/common_full_phone.mk)


# BOOT ANIMATION -----------------------------------------------------------------------------------
TARGET_BOOTANIMATION_PRELOAD       := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH  := 720

# FINGERPRINT --------------------------------------------------------------------------------------
#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=cedarlite BUILD_FINGERPRINT="alcatel/cedarlite/cedarlite:4.2.1:user/release-keys" PRIVATE_BUILD_DESC="U9500-1V100R001RUSC00B523_SYSTEM"

# DEVICE IDENTITY ----------------------------------------------------------------------------------
PRODUCT_DEVICE       := cedarlite
PRODUCT_NAME         := cm_cedarlite
PRODUCT_RELEASE_NAME := cedarlite
PRODUCT_BRAND        := Alcatel
PRODUCT_MODEL        := OT-986
PRODUCT_MANUFACTURER := TCL
