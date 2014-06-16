## Specify phone tech before including full_phone

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Inherit some common Carbon stuff.
$(call inherit-product, vendor/carbon/config/common.mk)
$(call inherit-product, vendor/carbon/config/common_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/p769/full_p769.mk)

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusL9
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cm/config/common_versions.mk

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=u2_open_eu BUILD_FINGERPRINT=lge/u2_open_eu/u2:4.1.2/JRO03L/P76020b.4DAAAC8F:user/release-keys PRIVATE_BUILD_DESC="u2_open_eu-user 4.1.2 JRO03L P76020b.4DAAAC8F release-keys"

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p769
PRODUCT_NAME := carbon_p769
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-P769
PRODUCT_MANUFACTURER := lge

# Enable Torch
PRODUCT_PACKAGES += Torch LgeL9Parts
