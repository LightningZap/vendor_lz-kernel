#This is intended to automatically add Lightning Zap scripts to your build 
#This eliminates the steps of adding the init.d scripts and sysctl.conf to your already built .zip then regenerating a new md4sum
#Team Fah-Q! thanks you for your support

# init.d support
PRODUCT_COPY_FILES += \
    vendor/lz-kernel/E4GT/scripts/etc/init.d/00lztweak:system/etc/init.d/00lztweak \
    vendor/lz-kernel/E4GT/scripts/etc/init.d/01governor:system/etc/init.d/01governor \
    vendor/lz-kernel/E4GT/scripts/etc/init.d/02makesysappsrw:system/etc/init.d/02makesysappsrw \
    vendor/lz-kernel/E4GT/scripts/etc/init.d/04vaccum_sqlite:system/etc/init.d/04vaccum_sqlite \
    vendor/lz-kernel/E4GT/scripts/etc/init.d/05zipalign:system/etc/init.d/05zipalign \
    vendor/lz-kernel/E4GT/scripts/etc/init.d/89prop:system/etc/init.d/89prop \

# Apps
PRODUCT_COPY_FILES += \
    vendor/lz-kernel/E4GT/apps/RootBrowser.apk:system/app/RootBrowser.apk \
    vendor/lz-kernel/E4GT/apps/VoltageControl.apk:system/app/VoltageControl.apk \

# sysctl.conf
PRODUCT_COPY_FILES += \
     vendor/lz-kernel/E4GT/scripts/etc/sysctl.conf:system/etc/sysctl.conf \

# zipalign binary
PRODUCT_COPY_FILES += \
     vendor/lz-kernel/E4GT/binary/xbin/zipalign:system/xbin/zipalign \
