GMS_DATA_DIR := vendor/google/data

GMS_PERMISSION_FILES := \
	com.google.android.camera2.xml \
	com.google.android.dialer.support.xml \
	com.google.android.maps.xml \
	com.google.android.media.effects.xml \
	com.google.widevine.software.drm.xml \

define copy-gms-files
$(eval PRODUCT_COPY_FILES += $(GMS_DATA_DIR)/$(1):$(TARGET_COPY_OUT_SYSTEM)/$(2)/$(1):google)
endef

$(foreach f, $(GMS_PERMISSION_FILES) ,$(call copy-gms-files,permissions/$(f),/etc))

$(call copy-gms-files,media/bootanimation.zip,)
$(call copy-gms-files,preferred-apps/google.xml,/etc)
$(call copy-gms-files,sysconfig/google.xml,/etc)
$(call copy-gms-files,sysconfig/google_build.xml,/etc)
$(call copy-gms-files,updatecmds/google_generic_update.txt,/etc)

