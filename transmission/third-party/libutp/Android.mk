LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

libutp_a_SOURCES = utp.cpp \
	utp_utils.cpp

LOCAL_SRC_FILES := $(libutp_a_SOURCES)
	
LOCAL_C_INCLUDES := \
	\
	
LOCAL_CPPFLAGS += -fno-exceptions -fno-rtti -ansi -DPOSIX -DNDEBUG -std=gnu++0x


LOCAL_MODULE:= libutp
LOCAL_MODULE_TAGS := optional

include $(BUILD_STATIC_LIBRARY)


