ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SwitchColors

SwitchColors_FILES = Tweak.x
SwitchColors_LIBRARIES = colorpicker
SwitchColors_CFLAGS = -fobjc-arc
$(TWEAK_NAME)_FRAMEWORKS = UIKit
$(TWEAK_NAME)_EXTRA_FRAMEWORKS += Cephei Alderis

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += switchcolorsprefs
include $(THEOS_MAKE_PATH)/aggregate.mk

FINAL_PACKAGE = 1
