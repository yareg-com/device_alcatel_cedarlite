# Inherit common CM stuff
$(call inherit-product, $(LOCAL_PATH)/common.mk)

# Bring in all video files
#$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

# Include CM audio files
include $(LOCAL_PATH)/cm_audio.mk

# Include CM LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/cm/overlay/dictionaries

# Optional CM packages
#PRODUCT_PACKAGES += \
#    Galaxy4 \
#    HoloSpiralWallpaper \
#    LiveWallpapers \
#    LiveWallpapersPicker \
#    MagicSmokeWallpapers \
#    NoiseField \
#    PhaseBeam \
#    VisualizationWallpapers \
#    PhotoTable \
#    SoundRecorder \
#    PhotoPhase

#PRODUCT_PACKAGES += \
#    VideoEditor \
#    libvideoeditor_jni \
#    libvideoeditor_core \
#    libvideoeditor_osal \
#    libvideoeditor_videofilters \
#    libvideoeditorplayer

# Extra tools in CM
PRODUCT_PACKAGES += \
    vim