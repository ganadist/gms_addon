FACELOCK_DIR := vendor/google/lib/facelock

FACELOCK_DATA := \
	vendor/pittpatt/models/detection/yaw_roll_face_detectors.7.1/pose-y-r.8.1.bin \
	vendor/pittpatt/models/detection/yaw_roll_face_detectors.7.1/head-y0-yi45-p0-pi45-rn30-ri30.5-v24-tree7-2-wmd.bin \
	vendor/pittpatt/models/detection/yaw_roll_face_detectors.7.1/head-y0-yi45-p0-pi45-r0-ri30.4a-v24-tree7-2-wmd.bin \
	vendor/pittpatt/models/detection/yaw_roll_face_detectors.7.1/head-y0-yi45-p0-pi45-rp30-ri30.5-v24-tree7-2-wmd.bin \
	vendor/pittpatt/models/detection/yaw_roll_face_detectors.7.1/pose-r.8.1.bin \
	vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.8/right_eye-y0-yi45-p0-pi45-r0-ri20.lg_32-3-tree7-wmd.bin \
	vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.8/landmark_group_meta_data.bin \
	vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.8/nose_base-y0-yi45-p0-pi45-r0-ri20.lg_32-tree7-wmd.bin \
	vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.8/left_eye-y0-yi45-p0-pi45-r0-ri20.lg_32-tree7-wmd.bin \
	vendor/pittpatt/models/recognition/face.face.y0-y0-71-N-tree_7-wmd.bin \
	vendor/lib/libfrsdk.so \
	lib/libfacelock_jni.so \
	lib/libfilterpack_facedetect.so \

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


