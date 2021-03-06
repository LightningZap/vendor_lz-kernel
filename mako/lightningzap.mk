#This is intended to automatically add Lightning Zap scripts to your build 
#This eliminates the steps of adding the init.d scripts and sysctl.conf to your already built .zip then regenerating a new md4sum
#Team Fah-Q! thanks you for your support

# init.d support
PRODUCT_COPY_FILES += \
    vendor/lz-kernel/mako/scripts/etc/init.d/00lztweak:system/etc/init.d/00lztweak \
    vendor/lz-kernel/mako/scripts/etc/init.d/01governor:system/etc/init.d/01governor \
    vendor/lz-kernel/mako/scripts/etc/init.d/02sdcard:system/etc/init.d/02sdcard \
    vendor/lz-kernel/mako/scripts/etc/init.d/05s2w:system/etc/init.d/05s2w \
    vendor/lz-kernel/mako/scripts/etc/init.d/89prop:system/etc/init.d/89prop \
