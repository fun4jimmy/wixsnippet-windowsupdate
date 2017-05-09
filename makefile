# Top level makefile

# define some common directories
BIN_DIR=bin
BOOT_DIR=bootstrapper

!include <$(BOOT_DIR)\common.mak>

BOOTSTRAPPER_TARGET=$(BIN_DIR)\$(BOOTSTRAPPER_TARGET_NAME)

all: $(INSTALLER_TARGET)

# build the installer
$(BOOTSTRAPPER_TARGET):
	pushd "$(BOOT_DIR)" & nmake & popd

clean:
	pushd "$(BOOT_DIR)" & nmake clean & popd
