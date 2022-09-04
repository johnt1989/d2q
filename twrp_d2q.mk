PRODUCT_RELEASE_NAME := d2q

$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(DEVICE_PATH)/recovery/root,recovery/root)

PRODUCT_NAME := twrp_d2q
PRODUCT_DEVICE := d2q
PRODUCT_MODEL := SM-N975U
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung
