# Top level makefile

# define some common directories
BIN_DIR=bin
INST_DIR=installer 

!include <$(INST_DIR)\common.mak>

INSTALLER_TARGET=$(BIN_DIR)\$(INSTALLER_TARGET_NAME)

all: $(INSTALLER_TARGET)

# build the installer
$(INSTALLER_TARGET):
	pushd "$(INST_DIR)" & nmake & popd

clean:
	pushd "$(INST_DIR)" & nmake clean & popd
