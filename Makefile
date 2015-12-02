include theos/makefiles/common.mk

TWEAK_NAME = LockHomeButton
LockHomeButton_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += lockhomebuttonprefs
SUBPROJECTS += lockhomebuttontoggle
include $(THEOS_MAKE_PATH)/aggregate.mk
