#This is intended to automatically add Lightning Zap scripts to your build 
#This eliminates the steps of adding the init.d scripts and sysctl.conf to your already built .zip then regenerating a new md4sum
#Team Fah-Q! thanks you for your support

# init.d support
PRODUCT_COPY_FILES += \
    vendor/lz-kernel/msm8660/scripts/etc/init.d/00lztweak:system/etc/init.d/00lztweak \
    vendor/lz-kernel/msm8660/scripts/etc/init.d/01governor:system/etc/init.d/01governor \
    vendor/lz-kernel/msm8660/scripts/etc/init.d/04vaccum_sqlite:system/etc/init.d/04vaccum_sqlite \
    vendor/lz-kernel/msm8660/scripts/etc/init.d/89prop:system/etc/init.d/89prop \

# Apps
PRODUCT_COPY_FILES += \
    vendor/lz-kernel/msm8660/apps/RootBrowser.apk:system/app/RootBrowser.apk \
    vendor/lz-kernel/msm8660/apps/VoltageControl.apk:system/app/VoltageControl.apk \
