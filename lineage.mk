#
# Copyright (C) 2015-2016 The CyanogenMod Project
#               2017-2018 The LineageOS Projec
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

# Boot animation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 720

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/ef52/full_ef52.mk)

# BOARD_HARDWARE_CLASS := device/pantech/ef52/lineagehw/

PRODUCT_DEVICE := ef52
PRODUCT_NAME := lineage_ef52
PRODUCT_BRAND := Vega
PRODUCT_MODEL := Vega Iron
PRODUCT_MANUFACTURER := Vega

TARGET_VENDOR := Pantech
TARGET_VENDOR_PRODUCT_NAME := ef52
TARGET_VENDOR_DEVICE_NAME := ef52

PRODUCT_GMS_CLIENTID_BASE := android-pantech

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8960-user 4.4.2 KOT49H IM-A870K.010 release-keys" 

BUILD_FINGERPRINT := VEGA/VEGA_IM-A870K/ef52k:4.4.2/KOT49H/IM-A870K.010:user/release-keys
