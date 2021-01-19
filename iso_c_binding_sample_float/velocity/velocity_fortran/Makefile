F90         := gfortran-8.3.0
INCLUDE     := -Iinclude
MODULES_OUT := -Jinclude

LIB_DIR     := lib
LIB_NAME    := velocity
LIB_NAME_A  := lib$(LIB_NAME).a

OBJ_DIR     := obj
BIN_DIR     := bin

LIBS 	    := -L$(LIB_DIR) -l$(LIB_NAME)

SRC             := $(wildcard src/$(LIB_NAME)/*.F90)
SRC_MAIN        := $(wildcard src/*.F90)

OBJ             := $(patsubst src/$(LIB_NAME)/%, obj/%,\
                     $(patsubst %.F90, %.o, $(SRC)))

OBJ_MAIN        := $(patsubst src/%, obj/%, \
                     $(patsubst %.F90, %.o, $(SRC_MAIN)))

dummy_build_folder := $(shell mkdir -p obj bin include lib)

all: $(BIN_DIR)/main
	
$(BIN_DIR)/main: $(LIB_DIR)/$(LIB_NAME_A) $(OBJ_MAIN)
	$(F90) -o $@ $^ $(LIBS)

$(LIB_DIR)/$(LIB_NAME_A): $(OBJ)
	ar -rs $@ $^

$(OBJ): $(SRC)
	$(F90) $(MODULES_OUT) -o $@ -fpic -c $< $(INCLUDE)

$(OBJ_MAIN): $(SRC_MAIN) $(OBJ)
	$(F90) $(MODULES_OUT) -o $@ -fpic -c $< $(INCLUDE)

clean:
	- rm -rf obj
	- rm -rf bin
	- rm -rf include
	- rm -rf lib
