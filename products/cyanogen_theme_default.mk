$(call inherit-product, vendor/cyanogen/products/cyanogen_passion.mk)

# Manually set the policy and PRODUCT_PACKAGES so we can tweak them 
# depending on whether or not we build with Google. There is no way
# to override PRODUCT_PACKAGES from an inheriting product yet.


PRODUCT_PROPERTY_OVERRIDES += ro.modversion=CyanogenMod-5-Nightly-N1

TARGET_BUILD_VARIANT := eng

# Change 'defaulttheme' to the theme name
# This will be the same name as the cyanogen_theme_defaulttheme.mk file
# located in the same directory

PRODUCT_NAME := cyanogen_theme_default
PRODUCT_BRAND := google
PRODUCT_DEVICE := passion
PRODUCT_MODEL := Nexus One
PRODUCT_MANUFACTURER := HTC

# Here you need to rename defaulttheme to match the folder name as well
PRODUCT_PACKAGE_OVERLAYS := vendor/cyanogen_theme_default/overlay
