Tools on how to add LZ to any device. Just place in to your vendor folder and open device/manufacturer/kernel/kernel.mk, scroll to line 36 and uncomment that line (remove the #):

$(call inherit-product, vendor/lz-kernel/lightningzap.mk)

Place the following in your manifest:

(<) project name=" TeamFahQ/vendor_lz-kernel" path="vendor/lz-kernel" remote="LZkernel" revision="master" />

Remove the ( ) around the "<"... Was the only way I could make the code visible...lol
Ensure you have the Lightning Zap kernel!

If you are building just the kernel, you will have to manually copy the /system/etc/*, /system/xbin, and /system/lib/modules/* to the directory in which you use to zip things up in
