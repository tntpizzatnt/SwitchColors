TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = SwitchColorsPrefs

SwitchColorsPrefs_FILES = SWTCHCOLORRootListController.m
SwitchColorsPrefs_LIBRARIES = colorpicker
SwitchColorsPrefs_FRAMEWORKS = UIKit
SwitchColorsPrefs_PRIVATE_FRAMEWORKS = Preferences
$(BUNDLE_NAME)_EXTRA_FRAMEWORKS += Cephei CepheiPrefs Alderis
SwitchColorsPrefs_INSTALL_PATH = /Library/PreferenceBundles
SwitchColorsPrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
