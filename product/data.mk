GMS_PERMISSION_DIR := vendor/google/data/permissions

GMS_PERMISSION_FILES := \
	com.google.android.maps.xml \
	com.google.android.media.effects.xml \
	com.google.widevine.software.drm.xml \
	features.xml \

define copy-gms-permission
$(eval PRODUCT_COPY_FILES += $(GMS_PERMISSION_DIR)/$(1):$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/$(1):google)
endef

$(foreach f, $(GMS_PERMISSION_FILES) ,$(call copy-gms-permission,$(f)))

GMS_PERMISSION_FILES :=

PRODUCT_COPY_FILES += vendor/google/data/media/bootanimation.zip:$(TARGET_COPY_OUT_SYSTEM)/media/bootanimation.zip
