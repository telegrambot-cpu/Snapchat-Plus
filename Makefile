TARGET = iphone:clang:latest:14.0
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SnapPlusBadini
SnapPlusBadini_FILES = Tweak.x
SnapPlusBadini_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/tweak.mk
