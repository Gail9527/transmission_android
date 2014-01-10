LOCAL_PATH:= $(call my-dir)

#
# transmission-daemon
#

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
 daemon.c watch.c

LOCAL_CFLAGS:= \
	-DEMBEDDED \

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/../ \
	$(LOCAL_PATH)/../third-party \

LOCAL_SHARED_LIBRARIES := \
	libcutils \
	libssl \
	libcrypto

LOCAL_STATIC_LIBRARIES := \
	libtransmission \
	libminiupnp \
	libnatpmp \
	libdht \
	libutp \
	libcurl \
	libevent2 \
	libz


LOCAL_MODULE:=transmission-daemon
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)


#
# transmission-remote
#

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
 remote.c

LOCAL_CFLAGS:= \
	-DEMBEDDED \


LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/../ \
	$(LOCAL_PATH)/../third-party \

LOCAL_SHARED_LIBRARIES := \
	libcutils \
	libssl \
	libcrypto

LOCAL_STATIC_LIBRARIES := \
	libtransmission \
	libminiupnp \
	libnatpmp \
	libdht \
	libutp \
	libcurl \
	libevent2 \
	libz


LOCAL_MODULE:=transmission-remote
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
