include theos/makefiles/common.mk

TWEAK_NAME = flextweak
flextweak_FILES = Tweak.xm
flextweak_FRAMEWORKS = UIKit

CFLAGS=-I ./include/FLEX -I ./include
LDFLAGS=-L ./lib -lflex

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
