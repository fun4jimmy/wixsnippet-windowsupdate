# Application makefile

!include common.mak

# /MD Causes the application to use the multithread-specific and DLL-specific version of the run-time library.
CFLAGS=$(CFLAGS) /MD

# no built in macro for the linker so we must define one
LINK=link.exe
LFLAGS=

# define some common directories
BIN_DIR=..\bin

# This file is sometimes included from other makefiles so make sure we don't override APP_SRC_DIR
!ifndef APP_SRC_DIR
APP_SRC_DIR=src
!endif

# This file is sometimes included from other makefiles so make sure we don't override APP_OBJ_DIR
!ifndef APP_OBJ_DIR
APP_OBJ_DIR=obj
!endif

APP_TARGET=$(BIN_DIR)\$(APP_TARGET_NAME)

# define the list of dependent objects for application
APP_OBJECTS=\
	$(APP_OBJ_DIR)\main.obj

all: $(APP_TARGET)

# link application.exe from all the dependent objects
$(APP_TARGET): $(APP_OBJECTS)
	$(LINK) $(LFLAGS) -out:$(APP_TARGET) $**

# compile src/*.c files to obj/*.obj files
{$(APP_SRC_DIR)}.c{$(APP_OBJ_DIR)}.obj:
	$(CC) $(CFLAGS) -Fo$(APP_OBJ_DIR)\%|fF.obj -c $<

# double colon as this makefile is included from other makefiles that also define a clean target
clean::
	del /q $(APP_TARGET)
	del /q $(APP_OBJ_DIR)
