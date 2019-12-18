# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from scx30g2 common configs
-include device/samsung/scx30g2-common/BoardConfigCommon.mk

# Inherit from the proprietary version
-include vendor/samsung/j3xnlte/BoardConfigVendor.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := SC9830I

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 20971520
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5272240128
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Wifi
BOARD_WLAN_DEVICE := sc2341
WPA_SUPPLICANT_VERSION := VER_2_1_DEVEL
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_sprdwl
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_sprdwl
WIFI_DRIVER_FW_PATH_PARAM := "/data/misc/wifi/fwpath"
WIFI_DRIVER_FW_PATH_STA := "sta_mode"
WIFI_DRIVER_FW_PATH_AP := "ap_mode"

################################################################################
# Camera

#back camera rotation capture
TARGET_BOARD_BACK_CAMERA_ROTATION := false

#front camera rotation capture
TARGET_BOARD_FRONT_CAMERA_ROTATION := false

#rotation capture
TARGET_BOARD_CAMERA_ROTATION_CAPTURE := false

#support hal1.0,hal3.2
TARGET_BOARD_CAMERA_HAL_VERSION := 1.0

# camera sensor type
CAMERA_SENSOR_TYPE_BACK := "s5k4h5yc_mipi"
CAMERA_SENSOR_TYPE_FRONT := "s5k5e3yx_mipi"

# select camera 2M,3M,5M,8M
CAMERA_SUPPORT_SIZE := 8M
FRONT_CAMERA_SUPPORT_SIZE := 5M
TARGET_BOARD_NO_FRONT_SENSOR := false
TARGET_BOARD_CAMERA_FLASH_CTRL := false

#read otp method 1:from kernel 0:from user
TARGET_BOARD_CAMERA_READOTP_METHOD := 1

#face detect
TARGET_BOARD_CAMERA_FACE_DETECT := true
TARGET_BOARD_CAMERA_FD_LIB := omron

#sensor interface
TARGET_BOARD_BACK_CAMERA_INTERFACE := mipi
TARGET_BOARD_FRONT_CAMERA_INTERFACE := mipi

#select camera zsl cap mode
TARGET_BOARD_CAMERA_CAPTURE_MODE := true

#select camera zsl force cap mode
TARGET_BOARD_CAMERA_FORCE_ZSL_MODE := true
TARGET_BOARD_CAMERA_SPRD_PRIVATE_ZSL := false

#select camera not support autofocus
TARGET_BOARD_CAMERA_NO_AUTOFOCUS_DEV := false

#uv denoise enable
TARGET_BOARD_CAMERA_CAPTURE_DENOISE := false

#y denoise enable
TARGET_BOARD_CAMERA_Y_DENOISE := true

#select continuous auto focus
TARGET_BOARD_CAMERA_CAF := true

#pre_allocate capture memory
TARGET_BOARD_CAMERA_PRE_ALLOC_CAPTURE_MEM := true

#sc8830g isp ver 0;sc9630 isp ver 1;tshark2 isp version 2
TARGET_BOARD_CAMERA_ISP_SOFTWARE_VERSION := 2

#support auto anti-flicker
TARGET_BOARD_CAMERA_ANTI_FLICKER := true

#multi cap memory mode
TARGET_BOARD_MULTI_CAP_MEM := true

#select mipi d-phy mode(none, phya, phyb, phyab)
TARGET_BOARD_FRONT_CAMERA_MIPI := phyb
TARGET_BOARD_BACK_CAMERA_MIPI := phya

#select ccir pclk src(source0, source1)
TARGET_BOARD_FRONT_CAMERA_CCIR_PCLK := source0
TARGET_BOARD_BACK_CAMERA_CCIR_PCLK := source0

#third lib
TARGET_BOARD_USE_THRID_LIB := true
TARGET_BOARD_USE_THIRD_AWB_LIB_A := true
TARGET_BOARD_USE_ALC_AE_AWB := false
TARGET_BOARD_USE_THIRD_AF_LIB_A := true

#hdr effect enable
TARGET_BOARD_CAMERA_HDR_CAPTURE := true

#use media extensions
TARGET_USES_MEDIA_EXTENSIONS := true
################################################################################

# Kernel
TARGET_KERNEL_CONFIG := j3xnlte_permissive_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/sharkls

# Resolution
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Assert
TARGET_OTA_ASSERT_DEVICE := j3xnlte,j3xnltexx
