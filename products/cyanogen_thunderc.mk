# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Inherit device configuration for p500.
$(call inherit-product, device/lge/thunderc/device_thunderc.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

## Include FM-Radio stuff
#$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

PRODUCT_NAME := cyanogen_thunderc
PRODUCT_BRAND := lge
PRODUCT_DEVICE := thunderc
PRODUCT_MODEL := LG-LS670
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_ID=GRI40 \
    PRIVATE_BUILD_DESC="thunderc-user 2.3.3 GRI40 LG-P500-V20h.19D34B612E release-keys" \
    BUILD_FINGERPRINT=lge/thunderg/thunderg:2.3.3/GRI40/LG-P500-V20h.19D34B612E:user/release-keys

# Release name and versioning
PRODUCT_RELEASE_NAME := LS670
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/cyanogen/prebuilt/mdpi/media/shutdownanimation.zip:system/media/shutdownanimation.zip
