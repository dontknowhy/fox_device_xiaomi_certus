# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
# SPDX-License-Identifier: Apache-2.0

add_lunch_combo twrp_certus-user
add_lunch_combo twrp_certus-userdebug
add_lunch_combo twrp_certus-eng

# ==========================================
# 1. 基础信息
# ==========================================
export OF_MAINTAINER_PATCH_VERSION=1
export OF_MAINTAINER=dontknowhy
# 这里的 1 代表这是第一个编译版本
export OF_MAINTAINER_AVATAR=${DEVICE_PATH}/avatar/avatar.png
export FOX_SYSTEM_INSTALL_PARTITION=/dev/block/platform/bootdevice/by-name/system
export FOX_VENDOR_INSTALL_PARTITION=/dev/block/platform/bootdevice/by-name/vendor
export FOX_RECOVERY_INSTALL_PARTITION=/dev/block/platform/bootdevice/by-name/recovery

# ==========================================
# 2. 屏幕与UI配置
# ==========================================
# Redmi 6/6a 是 720x1440 的屏幕。如果你是别的手机，请查清楚分辨率高度
# https://www.cnblogs.com/mmjio/p/20034307
# OF_SCREEN_H不是正常的分辨率，得自己算
export OF_SCREEN_H=2160
export OF_SCREEN_W=720
export OF_USE_COMPACT_SIZE=1

# 状态栏高度：这是为了避让刘海/水滴屏出现奇奇怪怪的问题
export OF_STATUS_H=65

# 左右边距：避开屏幕圆角
export OF_STATUS_INDENT_LEFT=24
export OF_STATUS_INDENT_RIGHT=24

# 时钟位置：1=左边, 2=中间 (水滴屏建议放左边 1)
export OF_CLOCK_POS=1

# 允许在设置里禁用导航栏
export OF_ALLOW_DISABLE_NAVBAR=0

# 导航栏高度
export OF_NAVIGATION_BAR_HEIGHT=30

# ==========================================
# 3. 核心功能
# ==========================================
export OF_USE_MAGISKBOOT=1
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=0
export OF_NO_RELOAD_MAGISKBOOT=1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export OF_NO_MIUI_PATCH_WARNING=1
export FOX_USE_NANO_EDITOR=1
export FOX_VARIANT=default
export FOX_BUILD_TYPE=Stable

# ==========================================
# 4. 【关键】Android 12+ 解密与防砖配置
# ==========================================
# 针对 Metadata 加密的等待逻辑，解决 Data 挂载慢或失败
export OF_SKIP_METADATA_DECRYPTION_WAIT=0

# 不要修改被加密的设备（防止触发 AVB 红字无法开机）
export OF_DONT_PATCH_ENCRYPTED_DEVICE=1

# 保持 DM-Verity 状态，防止修改 System 后出现傻逼提示
export OF_KEEP_DM_VERITY=1

# 强制使用 magiskboot 可以在刷入时自动修补 Boot，避免掉 Root
export OF_USE_MAGISKBOOT_COMPRESSED_WEBP=0

# ==========================================
# 5. 其他杂项
# ==========================================
# 启用很多好用的小工具
export OF_ENABLE_LPTOOLS=1

# 默认备份列表
export OF_QUICK_BACKUP_LIST="/boot;/data;"

# 写这个注释的时候电池检测依然是坏的，听AI说貌似下面这些有新旧两个方案，旧方案已被废除但貌似不会报错，两个都加
export TW_CUSTOM_BATTERY_PATH="/sys/class/power_supply/battery"
export TW_BATTERY_PATH="/sys/class/power_supply/battery"
export TW_BATTERY_CAPACITY_FILE=capacity
export TW_BATTERY_STATUS_FILE=status
export TW_BATTERY_SYSFS_WAIT_SECONDS=5
export TW_BATTERY_SYSFS_WAIT_FOR_STATUS=true
export TW_FRAMERATE=60
export OF_DEFAULT_KEYMASTER_VERSION=3.0