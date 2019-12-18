# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j3xnlte
PRODUCT_RELEASE_NAME := j3xnlte
PRODUCT_NAME := lineage_j3xnlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-J320FN
PRODUCT_MANUFACTURER := samsung

# Stock build fingerprint
BUILD_FINGERPRINT := "samsung/j3xnltexx/j3xnlte:5.1.1/LMY47V/J320FNXXU0ARB1:user/release-keys"
PRIVATE_BUILD_DESC := "j3xnltexx-user 5.1.1 LMY47V J320FNXXU0ARB1 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
	ro.build.fingerprint=$(BUILD_FINGERPRINT)
