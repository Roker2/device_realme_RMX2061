LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_DEVICE),RMX2061)
include $(CLEAR_VARS)

EGL_SYMLINK := $(TARGET_OUT_VENDOR)/lib/libGLESv2_adreno.so
$(EGL_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@mkdir -p $(dir $@)
	$(hide) ln -sf egl/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(EGL_SYMLINK)

include $(call all-makefiles-under,$(LOCAL_PATH))
endif
