# Boot animation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 720

# Inherit some common BlurOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/ef52/full_ef52.mk)

BOARD_HARDWARE_CLASS := device/pantech/ef52/lineagehw/

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef52
PRODUCT_NAME := cm_ef52
PRODUCT_BRAND := Vega
PRODUCT_MODEL := Vega Iron
PRODUCT_MANUFACTURER := Vega

# Set build fingerprint / ID / Product Name ect.
#PRODUCT_BUILD_PROP_OVERRIDES += \
#    PRODUCT_NAME="Vega Iron" \
#    TARGET_DEVICE=ef52 \


# Enable Torch
#PRODUCT_PACKAGES += Torch

