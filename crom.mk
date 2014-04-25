## Specify phone tech before including full_phone
$(call inherit-product, vendor/crom/config/common_cdma.mk)

# Inherit some common C-RoM stuff.
$(call inherit-product, vendor/crom/config/common_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/vs980/vs980.mk)

# products
PRODUCT_DEVICE := vs980
PRODUCT_BRAND := LGE
PRODUCT_NAME := crom_vs980
PRODUCT_MODEL := LG-VS980
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=lge/g2_vzw/g2:4.2.2/JDQ39B/VS98011A.1378346052:user/release-keys \
    PRIVATE_BUILD_DESC="g2_vzw-user 4.2.2 JDQ39B VS98011A.1378346052 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-verizon

PRODUCT_PACKAGES += Torch

# bootanimation
PRODUCT_COPY_FILES += \
    vendor/crom/prebuilt/common/media/xxhdpi/BOOTANIMATION-1080x1920.zip:system/media/bootanimation.zip
