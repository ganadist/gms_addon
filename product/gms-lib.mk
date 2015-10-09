GMS_LIBDIR := vendor/google/lib

GMS_LIBS := \
	libchromeview.so \
	libearthmobile.so \
	libfrsdk.so \
	libgoggles_clientvision.so \
	libgoogle_recognizer_jni.so \
	libgtalk_jni.so \
	libgtalk_stabilize.so \
	libiwnn.so \
	libjni_googlepinyinime_5.so \
	libjni_googlepinyinime_latinime_5.so \
	libjni_koreanime.so \
	libjni_latinimegoogle.so \
	libkaomoji_kihon.so \
	libkaomoji_tyukyu.so \
	libpatts_engine_jni_api.so \
	libspeexwrapper.so \

define gms-copy-lib
$(eval PRODUCT_COPY_FILES += $(GMS_LIBDIR)/$(1):$(TARGET_COPY_OUT_SYSTEM)/lib/$(1):google)
endef

$(foreach f, $(GMS_LIBS), $(call gms-copy-lib,$(f)))

GMS_LIBS :=
