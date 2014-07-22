# Inherit common CM stuff
<<<<<<< HEAD
$(call inherit-product, $(LOCAL_PATH)/common_full.mk)

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/cm/prebuilt/common/bootanimation/480.zip:system/media/bootanimation.zip
endif

$(call inherit-product, $(LOCAL_PATH)/telephony.mk)
=======
$(call inherit-product, $(LOCAL_PATH)/common.mk)

# Bring in all audio files
include frameworks/base/data/sounds/OriginalAudio.mk

# Include CM audio files
include vendor/cm/config/cm_audio.mk

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=CyanTone.ogg \
    ro.config.notification_sound=CyanMessage.ogg \
    ro.config.alarm_alert=CyanAlarm.ogg

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf
>>>>>>> 19db8e59b86a825ffd157b213f86663510e2c6dc
