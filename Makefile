# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/peter/VOC/decklink-debugger

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/peter/VOC/decklink-debugger

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/peter/VOC/decklink-debugger/CMakeFiles /home/peter/VOC/decklink-debugger/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/peter/VOC/decklink-debugger/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named decklink-debugger

# Build rule for target.
decklink-debugger: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 decklink-debugger
.PHONY : decklink-debugger

# fast build rule for target.
decklink-debugger/fast:
	$(MAKE) -f CMakeFiles/decklink-debugger.dir/build.make CMakeFiles/decklink-debugger.dir/build
.PHONY : decklink-debugger/fast

CaptureDelegate.o: CaptureDelegate.cpp.o

.PHONY : CaptureDelegate.o

# target to build an object file
CaptureDelegate.cpp.o:
	$(MAKE) -f CMakeFiles/decklink-debugger.dir/build.make CMakeFiles/decklink-debugger.dir/CaptureDelegate.cpp.o
.PHONY : CaptureDelegate.cpp.o

CaptureDelegate.i: CaptureDelegate.cpp.i

.PHONY : CaptureDelegate.i

# target to preprocess a source file
CaptureDelegate.cpp.i:
	$(MAKE) -f CMakeFiles/decklink-debugger.dir/build.make CMakeFiles/decklink-debugger.dir/CaptureDelegate.cpp.i
.PHONY : CaptureDelegate.cpp.i

CaptureDelegate.s: CaptureDelegate.cpp.s

.PHONY : CaptureDelegate.s

# target to generate assembly for a file
CaptureDelegate.cpp.s:
	$(MAKE) -f CMakeFiles/decklink-debugger.dir/build.make CMakeFiles/decklink-debugger.dir/CaptureDelegate.cpp.s
.PHONY : CaptureDelegate.cpp.s

DeviceProber.o: DeviceProber.cpp.o

.PHONY : DeviceProber.o

# target to build an object file
DeviceProber.cpp.o:
	$(MAKE) -f CMakeFiles/decklink-debugger.dir/build.make CMakeFiles/decklink-debugger.dir/DeviceProber.cpp.o
.PHONY : DeviceProber.cpp.o

DeviceProber.i: DeviceProber.cpp.i

.PHONY : DeviceProber.i

# target to preprocess a source file
DeviceProber.cpp.i:
	$(MAKE) -f CMakeFiles/decklink-debugger.dir/build.make CMakeFiles/decklink-debugger.dir/DeviceProber.cpp.i
.PHONY : DeviceProber.cpp.i

DeviceProber.s: DeviceProber.cpp.s

.PHONY : DeviceProber.s

# target to generate assembly for a file
DeviceProber.cpp.s:
	$(MAKE) -f CMakeFiles/decklink-debugger.dir/build.make CMakeFiles/decklink-debugger.dir/DeviceProber.cpp.s
.PHONY : DeviceProber.cpp.s

HttpServer.o: HttpServer.cpp.o

.PHONY : HttpServer.o

# target to build an object file
HttpServer.cpp.o:
	$(MAKE) -f CMakeFiles/decklink-debugger.dir/build.make CMakeFiles/decklink-debugger.dir/HttpServer.cpp.o
.PHONY : HttpServer.cpp.o

HttpServer.i: HttpServer.cpp.i

.PHONY : HttpServer.i

# target to preprocess a source file
HttpServer.cpp.i:
	$(MAKE) -f CMakeFiles/decklink-debugger.dir/build.make CMakeFiles/decklink-debugger.dir/HttpServer.cpp.i
.PHONY : HttpServer.cpp.i

HttpServer.s: HttpServer.cpp.s

.PHONY : HttpServer.s

# target to generate assembly for a file
HttpServer.cpp.s:
	$(MAKE) -f CMakeFiles/decklink-debugger.dir/build.make CMakeFiles/decklink-debugger.dir/HttpServer.cpp.s
.PHONY : HttpServer.cpp.s

home/peter/VOC/Blackmagic-DeckLink-SDK-10.9.9/Linux/include/DeckLinkAPIDispatch.o: home/peter/VOC/Blackmagic-DeckLink-SDK-10.9.9/Linux/include/DeckLinkAPIDispatch.cpp.o

.PHONY : home/peter/VOC/Blackmagic-DeckLink-SDK-10.9.9/Linux/include/DeckLinkAPIDispatch.o

# target to build an object file
home/peter/VOC/Blackmagic-DeckLink-SDK-10.9.9/Linux/include/DeckLinkAPIDispatch.cpp.o:
	$(MAKE) -f CMakeFiles/decklink-debugger.dir/build.make CMakeFiles/decklink-debugger.dir/home/peter/VOC/Blackmagic-DeckLink-SDK-10.9.9/Linux/include/DeckLinkAPIDispatch.cpp.o
.PHONY : home/peter/VOC/Blackmagic-DeckLink-SDK-10.9.9/Linux/include/DeckLinkAPIDispatch.cpp.o

home/peter/VOC/Blackmagic-DeckLink-SDK-10.9.9/Linux/include/DeckLinkAPIDispatch.i: home/peter/VOC/Blackmagic-DeckLink-SDK-10.9.9/Linux/include/DeckLinkAPIDispatch.cpp.i

.PHONY : home/peter/VOC/Blackmagic-DeckLink-SDK-10.9.9/Linux/include/DeckLinkAPIDispatch.i

# target to preprocess a source file
home/peter/VOC/Blackmagic-DeckLink-SDK-10.9.9/Linux/include/DeckLinkAPIDispatch.cpp.i:
	$(MAKE) -f CMakeFiles/decklink-debugger.dir/build.make CMakeFiles/decklink-debugger.dir/home/peter/VOC/Blackmagic-DeckLink-SDK-10.9.9/Linux/include/DeckLinkAPIDispatch.cpp.i
.PHONY : home/peter/VOC/Blackmagic-DeckLink-SDK-10.9.9/Linux/include/DeckLinkAPIDispatch.cpp.i

home/peter/VOC/Blackmagic-DeckLink-SDK-10.9.9/Linux/include/DeckLinkAPIDispatch.s: home/peter/VOC/Blackmagic-DeckLink-SDK-10.9.9/Linux/include/DeckLinkAPIDispatch.cpp.s

.PHONY : home/peter/VOC/Blackmagic-DeckLink-SDK-10.9.9/Linux/include/DeckLinkAPIDispatch.s

# target to generate assembly for a file
home/peter/VOC/Blackmagic-DeckLink-SDK-10.9.9/Linux/include/DeckLinkAPIDispatch.cpp.s:
	$(MAKE) -f CMakeFiles/decklink-debugger.dir/build.make CMakeFiles/decklink-debugger.dir/home/peter/VOC/Blackmagic-DeckLink-SDK-10.9.9/Linux/include/DeckLinkAPIDispatch.cpp.s
.PHONY : home/peter/VOC/Blackmagic-DeckLink-SDK-10.9.9/Linux/include/DeckLinkAPIDispatch.cpp.s

main.o: main.cpp.o

.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) -f CMakeFiles/decklink-debugger.dir/build.make CMakeFiles/decklink-debugger.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i

.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) -f CMakeFiles/decklink-debugger.dir/build.make CMakeFiles/decklink-debugger.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s

.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) -f CMakeFiles/decklink-debugger.dir/build.make CMakeFiles/decklink-debugger.dir/main.cpp.s
.PHONY : main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... decklink-debugger"
	@echo "... CaptureDelegate.o"
	@echo "... CaptureDelegate.i"
	@echo "... CaptureDelegate.s"
	@echo "... DeviceProber.o"
	@echo "... DeviceProber.i"
	@echo "... DeviceProber.s"
	@echo "... HttpServer.o"
	@echo "... HttpServer.i"
	@echo "... HttpServer.s"
	@echo "... home/peter/VOC/Blackmagic-DeckLink-SDK-10.9.9/Linux/include/DeckLinkAPIDispatch.o"
	@echo "... home/peter/VOC/Blackmagic-DeckLink-SDK-10.9.9/Linux/include/DeckLinkAPIDispatch.i"
	@echo "... home/peter/VOC/Blackmagic-DeckLink-SDK-10.9.9/Linux/include/DeckLinkAPIDispatch.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

