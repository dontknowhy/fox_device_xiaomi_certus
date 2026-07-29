# ==========================================
# 1. 基础信息 (这块随便填)
# ==========================================
OF_MAINTAINER_PATCH_VERSION := 1
OF_MAINTAINER := dontknowhy
# 这里的 1 代表这是第一个编译版本
OF_MAINTAINER_AVATAR := $(DEVICE_PATH)/avatar/avatar.png
# ==========================================
# 2. 屏幕与UI配置 (【必改】请根据你机型修改)
# ==========================================
# Redmi 6/6a 是 720x1440 的屏幕。如果你是别的手机，请查清楚分辨率高度
# https://www.cnblogs.com/mmjio/p/20034307
# **OF_SCREEN_H不是正常的分辨率，得自己算**
OF_SCREEN_H := 2160
OF_SCREEN_W := 720

OF_USE_COMPACT_SIZE := 1

# 状态栏高度：这是为了避让刘海/水滴屏出现奇奇怪怪的问题
OF_STATUS_H := 65

# 左右边距：避开屏幕圆角
OF_STATUS_INDENT_LEFT := 24
OF_STATUS_INDENT_RIGHT := 24

# 时钟位置：1=左边, 2=中间 (水滴屏建议放左边 1)
OF_CLOCK_POS := 1

# 允许在设置里禁用导航栏
OF_ALLOW_DISABLE_NAVBAR := 0

# 导航栏高度
OF_NAVIGATION_BAR_HEIGHT := 30

# ==========================================
# 3. 核心功能
# ==========================================
OF_USE_MAGISKBOOT := 1
OF_USE_MAGISKBOOT_FOR_ALL_PATCHES := 0
OF_NO_RELOAD_MAGISKBOOT := 1
OF_NO_TREBLE_COMPATIBILITY_CHECK := 1
OF_NO_MIUI_PATCH_WARNING := 1
FOX_ENABLE_APP_MANAGER=1

# ==========================================
# 4. 【关键】Android 12+ 解密与防砖配置
# ==========================================
# 针对 Metadata 加密的等待逻辑，解决 Data 挂载慢或失败
OF_SKIP_METADATA_DECRYPTION_WAIT := 0

# 不要修改被加密的设备（防止触发 AVB 红字无法开机）
OF_DONT_PATCH_ENCRYPTED_DEVICE := 1

# 保持 DM-Verity 状态，防止修改 System 后出现傻逼提示
OF_KEEP_DM_VERITY := 1

# 强制使用 magiskboot 可以在刷入时自动修补 Boot，避免掉 Root
OF_USE_MAGISKBOOT_COMPRESSED_WEBP := 0

# ==========================================
# 5. 其他杂项
# ==========================================
# 启用很多好用的小工具
OF_ENABLE_LPTOOLS := 1
# 默认备份列表
OF_QUICK_BACKUP_LIST := /boot;/data;
