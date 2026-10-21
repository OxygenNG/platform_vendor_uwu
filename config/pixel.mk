# Pixel extras. WITH_GMS can be set to false by a device or product to
# build a vanilla image; the GMS suite alone is 2.5GB and does not fit in
# cepheus's 6.0GB super partition together with the rest of product.
WITH_GMS ?= true

# Pixel Clocks
$(call inherit-product, vendor/pixel/clocks/products/clocks.mk)

ifeq ($(WITH_GMS),true)
# Pixel GMS
$(call inherit-product, vendor/pixel/gms/products/gms.mk)
endif

# Pixel GSans
$(call inherit-product, vendor/pixel/gsans/products/gsans.mk)

# Pixel Sounds
$(call inherit-product, vendor/pixel/sounds/products/sounds.mk)

# Pixel ThemePicker
$(call inherit-product, vendor/pixel/themepicker/products/themepicker.mk)
