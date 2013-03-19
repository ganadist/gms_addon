GMS_FRWDIR := vendor/google/framework
GMS_JAR := \
	com.google.android.maps.jar \
	com.google.android.media.effects.jar \
	com.google.widevine.software.drm.jar \

define gms-copy-jar
$(eval PRODUCT_COPY_FILES += $(GMS_FRWDIR)/$(1):$(TARGET_COPY_OUT_SYSTEM)/framework/$(1):google)
endef

$(foreach f, $(GMS_JAR), $(call gms-copy-jar,$(f)))

GMS_FRWDIR :=

