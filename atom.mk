LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := dropbear-pv
LOCAL_DESCRIPTION := dropbear-pv

LOCAL_AUTOTOOLS_CONFIGURE_ARGS := --enable-static
LOCAL_AUTOTOOLS_MAKE_BUILD_ARGS := PROGRAMS="dropbear dbclient dropbearkey dropbearconvert scp"
LOCAL_AUTOTOOLS_MAKE_INSTALL_ARGS := PROGRAMS="dropbear dbclient dropbearkey dropbearconvert scp"
LOCAL_LIBRARIES += zlib

LOCAL_CLEAN_DIRS := $(call local-get-build-dir)/usr/share/ $(call local-get-build-dir)/usr/include/

include $(BUILD_AUTOTOOLS)

