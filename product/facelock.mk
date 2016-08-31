FACELOCK_DIR := vendor/google/lib/facelock

FACELOCK_DATA := \
	vendor/lib/libfrsdk.so \
	vendor/lib/libfacenet.so \

define facelock-copy-lib
$(eval PRODUCT_COPY_FILES += $(FACELOCK_DIR)/$(1):$(TARGET_COPY_OUT_SYSTEM)/$(1):google)
endef

$(foreach f, $(FACELOCK_DATA), $(call facelock-copy-lib,$(f)))

FACELOCK_DATA :=
FACELOCK_DIR :=

PRODUCT_PACKAGES := \
	FaceLock \

PRODUCT_PROPERTY_OVERRIDES := \
	ro.facelock.black_timeout=400 \
	ro.facelock.det_timeout=1500 \
	ro.facelock.rec_timeout=2500 \
	ro.facelock.lively_timeout=2500 \
	ro.facelock.est_max_time=600 \
	ro.facelock.use_intro_anim=false \


