# VoltageOS packages
PRODUCT_PACKAGES += \
    SimpleDeviceConfig \
    ThemePicker \
    AvatarPicker \
    ThemesStub \
    Jellyfish \
    Gramophone \
    ExactCalculator

ifeq ($(VOLTAGE_BUILD_TYPE),OFFICIAL)
include vendor/voltage-priv/keys/keys.mk
else
-include vendor/voltage-priv/keys/keys.mk
endif

ifneq ($(PRODUCT_NO_CAMERA),true)
PRODUCT_PACKAGES += \
    Aperture
endif

# BtHelper
PRODUCT_PACKAGES += \
    BtHelper

# Extra tools in Voltage
PRODUCT_PACKAGES += \
    awk \
    bzip2 \
    curl \
    getcap \
    libsepol \
    setcap \

# Filesystems tools
PRODUCT_PACKAGES += \
    fsck.exfat \
    mke2fs \
    mkfs.exfat

# VoltageOS UDFPS animations
ifeq ($(EXTRA_UDFPS_ANIMATIONS),true)
PRODUCT_PACKAGES += \
    UdfpsIcons \
    UdfpsAnimations
endif

TORCH_STR_SUPPORTED ?= false

PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.torch_str_support=$(TORCH_STR_SUPPORTED)
