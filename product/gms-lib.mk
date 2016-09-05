DRM_LIBDIR := vendor/google/lib/drm

DRM_LIBS := \
	vendor/lib/drm/libdrmwvmplugin.so \
	vendor/lib/libWVStreamControlAPI_L1.so \
	vendor/lib/libWVphoneAPI.so \
	vendor/lib/libdrmdecrypt.so \
	vendor/lib/libwvdrm_L1.so \
	vendor/lib/libwvm.so \
	vendor/lib/mediadrm/libwvdrmengine.so \

define drm-copy-lib
$(eval PRODUCT_COPY_FILES += $(DRM_LIBDIR)/$(1):$(TARGET_COPY_OUT_SYSTEM)/$(1):google)
endef

$(foreach f, $(DRM_LIBS), $(call drm-copy-lib,$(f)))

DRM_LIBDIR :=
DRM_LIBS :=

PRODUCT_PROPERTY_OVERRIDES := \
	ro.com.widevine.cachesize=16777216 \
