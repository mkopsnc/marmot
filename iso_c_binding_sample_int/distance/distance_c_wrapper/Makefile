ARCH=$(shell uname -s | tr '[:upper:]' '[:lower:]')
ifeq ($(ARCH),darwin)
  EXT=dylib
else
  EXT=so
endif

CC          := gcc-8.3.0
INCLUDE     := -Iinclude

LIB_DIR     := lib
LIB_NAME    := distancewrapper
LIB_NAME_SO := lib$(LIB_NAME).$(EXT)
LIB_EXT_NAME := distance
LIB_EXT_DIR  := ../distance_fortran/lib/

OBJ_DIR     := obj
BIN_DIR     := bin

LIBS 	    := -L$(LIB_DIR) -l$(LIB_NAME)

SRC             := $(wildcard src/$(LIB_NAME)/*.c)
SRC_MAIN        := $(wildcard src/*.F90)

OBJ             := $(patsubst src/$(LIB_NAME)/%, obj/%,\
                     $(patsubst %.c, %.o, $(SRC)))

OBJ_MAIN        := $(patsubst src/%, obj/%, \
                     $(patsubst %.c, %.o, $(SRC_MAIN)))

dummy_build_folder := $(shell mkdir -p obj bin include lib)

all: $(BIN_DIR)/main install
	
$(BIN_DIR)/main: $(LIB_DIR)/$(LIB_NAME_SO)
	$(CC) -o $@ src/main.c $(INCLUDE) $(LIBS)

$(LIB_DIR)/$(LIB_NAME_SO): $(OBJ)
	$(CC) -g -shared -fpic $< -L$(LIB_EXT_DIR) -l$(LIB_EXT_NAME) -o $@

$(OBJ): $(SRC)
	$(CC) -g -c -fpic -o $@ $< $(INCLUDE) -L$(LIB_EXT_DIR) -l$(LIB_EXT_NAME)

install:
	cp -r lib/libdistance* ../distance_python/distance_wrapper

clean:
	- rm -rf obj
	- rm -rf bin
	- rm -rf lib
