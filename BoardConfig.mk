LOCAL_PATH := device/samsung/d2q

# Bootloader
BOARD_VENDOR := samsung
TARGET_SOC := msmnile
TARGET_BOOTLOADER_BOARD_NAME := msmnile
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_USES_UEFI := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := generic

# Architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a9
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a9

TARGET_USES_64_BIT_BINDER := true

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

ALLOW_MISSING_DEPENDENCIES := true

# File systems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := msmnile
TARGET_BOARD_PLATFORM_GPU := qcom-adreno640
QCOM_BOARD_PLATFORMS += msmnile

# Kernel
TARGET_PREBUILT_KERNEL := device/samsung/d2q/prebuilt/Image.gz-dtb
BOARD_PREBUILT_DTBOIMAGE := device/samsung/d2q/prebuilt/recoverydtbo
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_KERNEL_ARCH := arm64

# Boot
BOARD_BOOT_HEADER_VERSION := 1
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom androidboot.console=ttyMSM0 androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 swiotlb=2048 androidboot.usbcontroller=a600000.dwc3 firmware_class.path=/vendor/firmware_mnt/image androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_KERNEL_SECOND_OFFSET := 0x00f00000
BOARD_KERNEL_TAGS_OFFSET := 0x01e00000
BOARD_DTB_OFFSET := 0x01f00000
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION) --pagesize $(BOARD_KERNEL_PAGESIZE) --board "SRPSC04A005"
BOARD_MKBOOTIMG_ARGS += --recovery_dtbo $(BOARD_PREBUILT_DTBOIMAGE)

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 6853492736

# System as root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_ROOT_EXTRA_FOLDERS := cache carrier dqmdbg efs keydata keyrefuge omr spu
BOARD_SUPPRESS_SECURE_ERASE := true

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2
BOARD_AVB_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# Crypto
PLATFORM_SECURITY_PATCH := 2025-12-31
VENDOR_SECURITY_PATCH := 2025-12-31
PLATFORM_VERSION := 11
TW_INCLUDE_CRYPTO := false
TW_INCLUDE_CRYPTO_FBE := false

# TWRP specific build flags
TW_DEVICE_VERSION := 4_afaneh92
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_MAX_BRIGHTNESS := 36500
TW_DEFAULT_BRIGHTNESS := 15000
TW_Y_OFFSET := 143
TW_H_OFFSET := -143
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
TW_USE_NEW_MINADBD := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_USE_TOOLBOX := true

TARGET_USES_MKE2FS := true

SHRP_PATH := device/samsung/d2q
SHRP_MAINTAINER := Doc714
SHRP_DEVICE_CODE := d2q
SHRP_EDL_MODE := 1
SHRP_EXTERNAL := /external_sd
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usbotg
SHRP_REC := /dev/block/platform/soc/1d84000.ufshc/by-name/recovery
SHRP_REC_TYPE := SAR
SHRP_DEVICE_TYPE := A-Only
SHRP_FLASH := 1
SHRP_EXPRESS := true
SHRP_DEV_USE_HEX := true
#SHRP_OFFICIAL := true
SHRP_DARK := true
#SHRP_ALT_REBOOT := true
#SHRP_NOTCH := true
#SHRP_FONP_1 := /sys/class/leds/led:torch_0/brightness
#SHRP_FONP_2 := /sys/class/leds/led:torch_1/brightness
#SHRP_FONP_3 := /sys/class/leds/led:switch/brightness
#SHRP_FLASH_MAX_BRIGHTNESS := 200
#SHRP_STATUSBAR_RIGHT_PADDING := 20
#SHRP_STATUSBAR_LEFT_PADDING := 20
#SHRP_AB := true

#SHRP_EXTERNAL_ADDON_PATH := "device/samsung/d2q/prebuilt/"

# Added treblize addon
#SHRP_EXTERNAL_ADDON_1_NAME := "Add treble compatibility"
#SHRP_EXTERNAL_ADDON_1_INFO := "This patch will add treble compatibility to your device. Before doing this operation wipe your system partition. Do carefully"
#SHRP_EXTERNAL_ADDON_1_FILENAME := "treblize.zip"
#SHRP_EXTERNAL_ADDON_1_BTN_TEXT := "Confirm"
#SHRP_EXTERNAL_ADDON_1_SUCCESSFUL_TEXT := "Treblized"
#SHRP_INC_IN_REC_EXTERNAL_ADDON_1 := true

# Added detreblize addon
#SHRP_EXTERNAL_ADDON_2_NAME := "Remove treble compatibility"
#SHRP_EXTERNAL_ADDON_2_INFO := "This patch will remove treble compatibility from your device. Before doing this operation wipe system and vendor partition. Do carefully"
#SHRP_EXTERNAL_ADDON_2_FILENAME := "detreblize.zip"
#SHRP_EXTERNAL_ADDON_2_BTN_TEXT := "Confirm"
#SHRP_EXTERNAL_ADDON_2_SUCCESSFUL_TEXT := "Detreblized"
#SHRP_INC_IN_REC_EXTERNAL_ADDON_2 := true

# Including Magisk into recovery ramdisk
INC_IN_REC_MAGISK := true

# Including default addons into recovery ramdisk
INC_IN_REC_ADDON_1 := true
INC_IN_REC_ADDON_2 := true
INC_IN_REC_ADDON_3 := true
INC_IN_REC_ADDON_4 := true

#SHRP_SKIP_DEFAULT_ADDON_4 := true

SHRP_NO_SAR_AUTOMOUNT := true
