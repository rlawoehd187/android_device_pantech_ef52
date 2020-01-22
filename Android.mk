ifeq (ef52,$(TARGET_DEVICE))

LOCAL_PATH := $(call my-dir)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

include $(CLEAR_VARS)

# Create /firmware links
VIDC_IMAGES := \
    vidc.b00 vidc.b01 vidc.b02 vidc.b03 vidc.mdt

VIDC_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(VIDC_IMAGES)))
$(VIDC_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(VIDC_SYMLINKS)

endif
