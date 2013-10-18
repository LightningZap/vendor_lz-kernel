#This is intended to automatically add Lightning Zap scripts to your build 
#This eliminates the steps of adding the init.d scripts and sysctl.conf to your already built .zip then regenerating a new md4sum
#Team Fah-Q! thanks you for your support

# init.d support
PRODUCT_COPY_FILES += \
    vendor/lz-kernel/scripts/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/lz-kernel/scripts/etc/init.d/00lztweak:system/etc/init.d/00lztweak \
    vendor/lz-kernel/scripts/etc/init.d/01governor:system/etc/init.d/01governor \
    vendor/lz-kernel/scripts/etc/init.d/04vaccum_sqlite:system/etc/init.d/04vaccum_sqlite \
    vendor/lz-kernel/scripts/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel \
    vendor/lz-kernel/scripts/etc/init.d/89prop:system/etc/init.d/89prop \
    vendor/lz-kernel/scripts/etc/init.d/90userinit:system/etc/init.d/90userinit \

# Apps
PRODUCT_COPY_FILES += \
    vendor/lz-kernel/apps/RootBrowser.apk:system/app/RootBrowser.apk \
    vendor/lz-kernel/apps/VoltageControl.apk:system/app/VoltageControl.apk \
