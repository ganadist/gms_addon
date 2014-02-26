GMS_LIBDIR := vendor/google/lib

GMS_LIBS := \
	libAppDataSearch.so \
	libEnjemailuri.so \
	lib_dic_en_USUK.conf.so \
	lib_dic_en_tablet_USUK.conf.so \
	lib_dic_ja_JP.conf.so \
	lib_dic_morphem_ja_JP.conf.so \
	libchromeview.so \
	libdocscanner_image-v7a.so \
	libdocsimageutils.so \
	libearthandroid.so \
	libearthmobile.so \
	libennjcon.so \
	libennjubase1.so \
	libennjubase1gb.so \
	libennjubase1us.so \
	libennjubase2.so \
	libennjubase3.so \
	libennjyomi.so \
	libgames_rtmp_jni.so \
	libgoogle_recognizer_jni_l.so \
	libgtalk_jni.so \
	libgtalk_stabilize.so \
	libiwnn.so \
	libjni_googlepinyinime_5.so \
	libjni_googlepinyinime_latinime_5.so \
	libjni_koreanime.so \
	libjni_latinimegoogle.so \
	libjni_t13n_shared_engine.so \
	liblightcycle.so \
	libpatts_engine_jni_api.so \
	libplus_jni_v8.so \
	libspeexwrapper.so \
	libwebp_android.so \
	libwebrtc_audio_coding.so \
	libwprintplugin_pcl.so \
	libwprintplugin_pdf.so \

define gms-copy-lib
$(eval PRODUCT_COPY_FILES += $(GMS_LIBDIR)/$(1):$(TARGET_COPY_OUT_SYSTEM)/lib/$(1):google)
endef

$(foreach f, $(GMS_LIBS), $(call gms-copy-lib,$(f)))

GMS_LIBS :=
