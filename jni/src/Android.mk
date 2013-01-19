LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := main

SDL_PATH := ../SDL

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/$(SDL_PATH)/include \
	$(LOCAL_PATH)/../SDL_image \
	$(LOCAL_PATH)/../SDL_mixer \
	$(LOCAL_PATH)/../SDL_ttf

# Add any compilation flags for your project here...
LOCAL_CFLAGS := \
	-DPLAY_MOD

# Add your application source files here...
LOCAL_SRC_FILES := $(SDL_PATH)/src/main/android/SDL_android_main.cpp 


LOCAL_SHARED_LIBRARIES := SDL SDL_image SDL_mixer SDL_ttf

LOCAL_LDLIBS := -lGLESv1_CM -llog \
obj/local/armeabi/libSDL2.so \
obj/local/armeabi/libSDL2_mixer.so \
obj/local/armeabi/libSDL2_image.so

include $(BUILD_SHARED_LIBRARY)
