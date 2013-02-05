# I'm using this method to send the build.prop tweaks to the default.prop. I have found having the tweaks in an init.d script
# or shell script using the setprop command doesn't work as well as having them written directly into the build.prop.
# So I'm testing this method with the default.prop as it qould
# be quite difficult to try and write a build.prop for every ROM available, and my goal is to reduce the amount of init.d scripts
# to increase boot time and decrease boot load and logcat lenth...lol

# MISC tweaks
ADDITIONAL_DEFAULT_PROPERTIES += ro.media.enc.jpeg.quality = 100
ADDITIONAL_DEFAULT_PROPERTIES += ro.HOME_APP_MEM = 4096
ADDITIONAL_DEFAULT_PROPERTIES += dalvik.vm.execution-mode=int:jit
ADDITIONAL_DEFAULT_PROPERTIES += dalvik.vm.verify-bytecode=false
ADDITIONAL_DEFAULT_PROPERTIES += debug.composition.type=gpu

# Define TCP buffer sizes for various networks
# ReadMin, ReadInitial, ReadMax, WriteMin, WriteInitial, WriteMax,
ADDITIONAL_DEFAULT_PROPERTIES += net.tcp.buffersize.default = 4096,87380,110208,4096,16384,110208
ADDITIONAL_DEFAULT_PROPERTIES += net.tcp.buffersize.wifi = 524288,1048576,2097152,262144,524288,1048576
ADDITIONAL_DEFAULT_PROPERTIES += net.tcp.buffersize.lte = 4094,87380,2560000,4096,16384,1220608
ADDITIONAL_DEFAULT_PROPERTIES += net.tcp.buffersize.umts = 4094,87380,196608,4096,16384,110208
ADDITIONAL_DEFAULT_PROPERTIES += net.tcp.buffersize.hspa = 4094,87380,704512,4096,16384,110208
ADDITIONAL_DEFAULT_PROPERTIES += net.tcp.buffersize.hsupa = 4094,87380,704512,4096,16384,110208
ADDITIONAL_DEFAULT_PROPERTIES += net.tcp.buffersize.hsdpa = 4094,87380,704512,4096,16384,110208
ADDITIONAL_DEFAULT_PROPERTIES += net.tcp.buffersize.edge = 4093,26280,35040,4096,16384,35040
ADDITIONAL_DEFAULT_PROPERTIES += net.tcp.buffersize.gprs = 4092,8760,11680,4096,8760,11680
ADDITIONAL_DEFAULT_PROPERTIES += net.tcp.buffersize.evdo_b = 4094,87380,262144,4096,16384,2621
 
# Overall touch responsiveness
ADDITIONAL_DEFAULT_PROPERTIES += video.accelerate.hw = 1
ADDITIONAL_DEFAULT_PROPERTIES += debug.performance.tuning = 1

# Save battery
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.shutdown.mode = hibernate
ADDITIONAL_DEFAULT_PROPERTIES += pm.sleep_mode = 1
ADDITIONAL_DEFAULT_PROPERTIES += ro.ril.disable.power.collapse = 1

