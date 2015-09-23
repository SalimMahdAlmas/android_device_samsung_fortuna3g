#
# Copyright (C) 2009 The Android Open Source Project
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

# BoardConfig.mk
LOCAL_PATH 					:= device/samsung/fortuna3g


# Inherit from samsung qcom-common
-include device/samsung/qcom-common/BoardConfigCommon.mk 

# inherit from the proprietary version
-include vendor/samsung/fortuna3g/BoardConfigVendor.mk

# Partition
BOARD_BOOTIMAGE_PARTITION_SIZE 			:= 13631488 # 13312*1024
BOARD_RECOVERYIMAGE_PARTITION_SIZE 		:= 15728640 # 15360*1024
BOARD_SYSTEMIMAGE_PARTITION_SIZE 		:= 1568669696 # 1531904*1024
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE 		:= ext4
BOARD_CACHEIMAGE_PARTITION_SIZE 		:= 314572800 # 307200*1024

# Platform
TARGET_BOARD_PLATFORM 				:= MSM8916
TARGET_BOOTLOADER_BOARD_NAME 			:= msm8916
TARGET_BOARD_PLATFORM_GPU 			:= Adreno-306
TARGET_USE_QCOM_BIONIC_OPTIMIZATION 		:= true

# Flags
TARGET_GLOBAL_CFLAGS 				+= -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS 				+= -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS 				+= -DNO_SECURE_DISCARD

# Architecture
TARGET_ARCH 					:= arm
TARGET_ARCH_VARIANT 				:= armv7-a-neon
TARGET_CPU_VARIANT 				:= cortex-a53
TARGET_CPU_ABI 					:= armeabi-v7a
TARGET_CPU_ABI2 				:= armeabi
ARCH_ARM_HAVE_NEON				:= true
ARCH_ARM_HAVE_VFP 				:= true
ARCH_ARM_HAVE_TLS_REGISTER 			:= true

WITH_DEXPREOPT 					:= true

# caf-new 
TARGET_QCOM_DISPLAY_VARIANT 			:= caf-new
TARGET_ENABLE_QC_AV_ENHANCEMENTS 		:= true
TARGET_QCOM_MEDIA_VARIANT 			:= caf-new

# Kernel
BOARD_CUSTOM_BOOTIMG_MK 			:= $(LOCAL_PATH)/mkbootimg.mk
BOARD_KERNEL_BASE 				:= 0x80000000
BOARD_KERNEL_CMDLINE 				:= console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE 				:= 2048
BOARD_KERNEL_SEPARATED_DT 			:= true
BOARD_KERNEL_TAGS_OFFSET 			:= 0x01E00000
BOARD_RAMDISK_OFFSET     			:= 0x02000000
TARGET_KERNEL_SOURCE 				:= kernel/samsung/fortuna
BOARD_FLASH_BLOCK_SIZE 				:= 131072
TARGET_KERNEL_CONFIG 				:= msm8916_sec_defconfig
TARGET_KERNEL_SELINUX_CONFIG 			:= selinux_defconfig
TARGET_KERNEL_TIMA_CONFIG 			:= tima8916_defconfig
TARGET_KERNEL_VARIANT_CONFIG 			:= msm8916_sec_fortunave3g_eur_defconfig

# SD
TARGET_USE_CUSTOM_LUN_FILE_PATH 		:= /sys/devices/platform/msm_hsusb/gadget/lun%d/file
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR 		:= true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS 		:= true
BOARD_SUPPRESS_EMMC_WIPE 			:= true
BOARD_VOLD_MAX_PARTITIONS 			:= 28

# Audio
AUDIO_FEATURE_LOW_LATENCY_PRIMARY 		:= true
BOARD_USES_ALSA_AUDIO 				:= true

# Recovery
TARGET_RECOVERY_FSTAB 				:= $(LOCAL_PATH)/recovery/fstab.qcom
TARGET_USERIMAGES_USE_EXT4 			:= true
BOARD_HAS_LARGE_FILESYSTEM			:= true
TARGET_RECOVERY_DENSITY 			:= hdpi

# Charger
BOARD_CHARGER_DISABLE_INIT_BLANK 		:= true
BOARD_CHARGER_ENABLE_SUSPEND 			:= true
BOARD_CHARGER_SHOW_PERCENTAGE 			:= true

#SE Policy
BOARD_SEPOLICY_DIRS += \
        device/samsung/fortuna3g/sepolicy
        
BOARD_SEPOLICY_UNION += \
	genfs_contexts \
	file_contexts \
	sepolicy.te

# RIL
BOARD_RIL_CLASS 				:= ../../../$(LOCAL_PATH)/ril/

#Camera
USE_CAMERA_STUB 				:= true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR 	:= $(DEVICE_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH 				:= true
BOARD_HAVE_BLUETOOTH_QCOM 			:= true
BLUETOOTH_HCI_USE_MCT 				:= true

# QCOM RTC
BOARD_USES_QC_TIME_SERVICES 			:= true
