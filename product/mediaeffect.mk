MEDIAEFFECT_DIR := vendor/google/lib/mediaeffect

define mediaeffect-copy-lib
$(eval PRODUCT_COPY_FILES += $(MEDIAEFFECT_DIR)/$(1):$(TARGET_COPY_OUT_SYSTEM)/$(1):google)
endef

MEDIAEFFECT_DATA := \
	vendor/media/PFFprec_600.emd \
	vendor/media/LMspeed_508.emd \
	lib/libfilterpack_facedetect.so \

$(foreach f, $(MEDIAEFFECT_DATA), $(call mediaeffect-copy-lib,$(f)))

MEDIAEFFECT_DATA :=
MEDIAEFFECT_DIR :=


