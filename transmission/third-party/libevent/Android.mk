LOCAL_PATH:= $(call my-dir)

common_CFLAGS := -DHAVE_CONFIG_H

common_SRC_FILES := \
	buffer.c bufferevent.c bufferevent_filter.c bufferevent_openssl.c\
	bufferevent_pair.c bufferevent_ratelim.c bufferevent_sock.c \
	epoll.c epoll_sub.c evdns.c event.c event_tagging.c evmap.c \
	evrpc.c evthread.c evthread_pthread.c evutil.c evutil_rand.c http.c\
	listener.c log.c poll.c select.c signal.c strlcpy.c

common_COPY_HEADERS_TO := event2
common_COPY_HEADERS := \
	buffer.h \
	buffer_compat.h bufferevent.h \
	bufferevent_compat.h bufferevent_ssl.h \
	bufferevent_struct.h dns.h dns_compat.h \
	dns_struct.h event.h event-config.h event_compat.h \
	event_struct.h http.h http_compat.h \
	http_struct.h keyvalq_struct.h listener.h \
	rpc.h rpc_compat.h rpc_struct.h \
	tag.h tag_compat.h thread.h util.h

########################################################################
# Build the libevent static library

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := $(LOCAL_PATH)/compat $(LOCAL_PATH)/include external/zlib external/openssl/include
LOCAL_SRC_FILES := $(common_SRC_FILES)

LOCAL_CFLAGS += $(common_CFLAGS)

LOCAL_COPY_HEADERS_TO := $(common_COPY_HEADERS_TO)
LOCAL_COPY_HEADERS := $(addprefix include/event2/,$(common_COPY_HEADERS))

LOCAL_MODULE:= libevent2
LOCAL_MODULE_TAGS := optional

include $(BUILD_STATIC_LIBRARY)
