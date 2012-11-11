## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# This device has NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/p720/p720.mk)

PRODUCT_NAME := cm_p720

# Release name and versioning
PRODUCT_RELEASE_NAME := Optimus3DMAX
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cm/config/common_versions.mk

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=cx2_open_eur BUILD_FINGERPRINT=lge/cx2_open_eur/cx2:2.3.6/GRK39F/LGP720-V10a.1c042d568e:user/release-keys PRIVATE_BUILD_DESC="cx2-user 2.3.6 GRK39F LGP720-V10a-MAR-29-2012.47b8c603 release-keys"

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p720

# Enable Torch
PRODUCT_PACKAGES += Torch WiFiDirectDemo
