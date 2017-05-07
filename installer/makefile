# Installer makefile

WIX_BIN_DIR=%wix%bin
CANDLE_="$(WIX_BIN_DIR)\candle.exe"
CANDLE="$(CANDLE_)"
LIGHT_="$(WIX_BIN_DIR)\light.exe"
LIGHT="$(LIGHT_)"

# define some common directories
APP_DIR=..\application
APP_SRC_DIR=$(APP_DIR)\src
APP_OBJ_DIR=$(APP_DIR)\obj

BIN_DIR=..\bin
INST_OBJ_DIR=obj
INST_SRC_DIR=src

!include common.mak
!include $(APP_DIR)\common.mak

INST_TARGET=$(BIN_DIR)\$(INST_TARGET_NAME)

INST_OBJECTS=\
	$(INST_OBJ_DIR)\main.wixobj

# enable our custom inference rule for .wxs files
.SUFFIXES: .wxs

all: $(INST_TARGET)

# link application.exe from all the dependent objects
$(INST_TARGET): $(INST_OBJECTS)
	$(LIGHT) -out $(INST_TARGET) $(INST_OBJECTS)

# main.wxs references our application executable so make sure nmake knows it is a dependent
$(INST_OBJ_DIR)\main.wixobj: $(BIN_DIR)\$(APP_TARGET_NAME)

# compile src/*.wxs files to obj/*.wixobj files
{$(INST_SRC_DIR)}.wxs{$(INST_OBJ_DIR)}.wixobj:
	$(CANDLE) -out $(INST_OBJ_DIR)\%|fF.wixobj $<

# include the application makefile to gather all the dependencies
!include $(APP_DIR)\makefile

# double colon as clean already has a description block in $(APP_DIR)\makefile
clean::
	del /q $(INST_OBJECTS)
	del /q $(INST_TARGET)
