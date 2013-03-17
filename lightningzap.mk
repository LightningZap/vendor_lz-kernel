#This is intended to automatically add Lightning Zap scripts to your build 
#This eliminates the steps of adding the init.d scripts and sysctl.conf to your already built .zip then regenerating a new md4sum
#Team Fah-Q! thanks you for your support

# init.d support
PRODUCT_COPY_FILES += \
    vendor/lz-kernel/scripts/etc/init.d/0remount:system/etc/init.d/0remount \
    vendor/lz-kernel/scripts/etc/init.d/01governor:system/etc/init.d/01governor \
    vendor/lz-kernel/scripts/etc/init.d/03systweak:system/etc/init.d/03systweak \
    vendor/lz-kernel/scripts/etc/init.d/04makesysappsrw:system/etc/init.d/0makesysappsrw \
    vendor/lz-kernel/scripts/etc/init.d/07vaccum_sqlite:system/etc/init.d/07vaccum_sqlite \
    vendor/lz-kernel/scripts/etc/init.d/10zipalign:system/etc/init.d/10zipalign \
    vendor/lz-kernel/scripts/etc/init.d/11sysctltweaks:system/etc/init.d/11sysctltweaks \
    vendor/lz-kernel/scripts/etc/init.d/12complete:system/etc/init.d/12complete \

# Apps
PRODUCT_COPY_FILES += \
    vendor/lz-kernel/apps/RootBrowser.apk:system/app/RootBrowser.apk \
    vendor/lz-kernel/apps/VoltageControl.apk:system/app/VoltageControl.apk \

# sysctl.conf
PRODUCT_COPY_FILES += \
     vendor/lz-kernel/scripts/etc/sysctl.conf:system/etc/sysctl.conf \

# zipalign binary
PRODUCT_COPY_FILES += \
     vendor/lz-kernel/binary/xbin/zipalign:system/xbin/zipalign \

# Trying prop tweaks with a build.prop(2) You will have to manually rename the package to build.prop(2) since make doesn't recognize () and replaces your build.prop. TODO: figure out how to name the packages with the () and not override the build.prop. Might revert back to adding tweaks to default.prop
PRODUCT_COPY_FILES += \
     vendor/lz-kernel/scripts/build.prop2:system/build.prop2 \

# bootanimation
PRODUCT_COPY_FILES += \
    vendor/lz-kernel/media/LZbootanimation:system/media/bootanimation \
