# config.mk
#
# Product-specific compile-time definitions.
#
#Platform
TARGET_BOOTLOADER_BOARD_NAME := mk802
TARGET_BOARD_PLATFORM := sun4i

# The generic product target doesn't have any hardware-specific pieces.
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true

#Enable NEON feature
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_EXTRA_CFLAGS += $(call cc-option,"-march=armv7-a -mtune=cortex-a9",$(call cc-option,"-march=armv7-a -mtune=cortex-a8")) $(call cc-option,"-march=armv7-a -mcpu=cortex-a9",$(call cc-option,"-march=armv7-a -mcpu=cortex-a8"))

#Filesystem and partitioning
TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 536870912
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_FLASH_BLOCK_SIZE := 4096

#EGL stuff
BOARD_EGL_CFG := device/allwinner/mk802/egl.cfg
USE_OPENGL_RENDERER := true
ENABLE_WEBGL := true

#system 
TARGET_NO_RECOVERY := true
#TARGET_PROVIDES_INIT_RC :=true
TARGET_NO_RADIOIMAGE := true

#SMALLER_FONT_FOOTPRINT := true
#MINIMAL_FONT_FOOTPRINT := true

# Some framework code requires this to enable BT
BOARD_HAVE_BLUETOOTH := true

WPA_SUPPLICANT_VERSION := VER_0_8_X

