# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug

# Include any dependencies generated for this target.
include runner\CMakeFiles\reboot_launcher.dir\depend.make

# Include the progress variables for this target.
include runner\CMakeFiles\reboot_launcher.dir\progress.make

# Include the compile flags for this target's objects.
include runner\CMakeFiles\reboot_launcher.dir\flags.make

runner\CMakeFiles\reboot_launcher.dir\flutter_window.cpp.obj: runner\CMakeFiles\reboot_launcher.dir\flags.make
runner\CMakeFiles\reboot_launcher.dir\flutter_window.cpp.obj: ..\runner\flutter_window.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object runner/CMakeFiles/reboot_launcher.dir/flutter_window.cpp.obj"
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\runner
	C:\PROGRA~1\MICROS~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\reboot_launcher.dir\flutter_window.cpp.obj /FdCMakeFiles\reboot_launcher.dir\ /FS -c C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\runner\flutter_window.cpp
<<
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug

runner\CMakeFiles\reboot_launcher.dir\flutter_window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/reboot_launcher.dir/flutter_window.cpp.i"
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\runner
	C:\PROGRA~1\MICROS~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe > CMakeFiles\reboot_launcher.dir\flutter_window.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\runner\flutter_window.cpp
<<
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug

runner\CMakeFiles\reboot_launcher.dir\flutter_window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/reboot_launcher.dir/flutter_window.cpp.s"
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\runner
	C:\PROGRA~1\MICROS~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\reboot_launcher.dir\flutter_window.cpp.s /c C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\runner\flutter_window.cpp
<<
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug

runner\CMakeFiles\reboot_launcher.dir\main.cpp.obj: runner\CMakeFiles\reboot_launcher.dir\flags.make
runner\CMakeFiles\reboot_launcher.dir\main.cpp.obj: ..\runner\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object runner/CMakeFiles/reboot_launcher.dir/main.cpp.obj"
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\runner
	C:\PROGRA~1\MICROS~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\reboot_launcher.dir\main.cpp.obj /FdCMakeFiles\reboot_launcher.dir\ /FS -c C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\runner\main.cpp
<<
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug

runner\CMakeFiles\reboot_launcher.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/reboot_launcher.dir/main.cpp.i"
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\runner
	C:\PROGRA~1\MICROS~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe > CMakeFiles\reboot_launcher.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\runner\main.cpp
<<
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug

runner\CMakeFiles\reboot_launcher.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/reboot_launcher.dir/main.cpp.s"
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\runner
	C:\PROGRA~1\MICROS~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\reboot_launcher.dir\main.cpp.s /c C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\runner\main.cpp
<<
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug

runner\CMakeFiles\reboot_launcher.dir\utils.cpp.obj: runner\CMakeFiles\reboot_launcher.dir\flags.make
runner\CMakeFiles\reboot_launcher.dir\utils.cpp.obj: ..\runner\utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object runner/CMakeFiles/reboot_launcher.dir/utils.cpp.obj"
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\runner
	C:\PROGRA~1\MICROS~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\reboot_launcher.dir\utils.cpp.obj /FdCMakeFiles\reboot_launcher.dir\ /FS -c C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\runner\utils.cpp
<<
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug

runner\CMakeFiles\reboot_launcher.dir\utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/reboot_launcher.dir/utils.cpp.i"
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\runner
	C:\PROGRA~1\MICROS~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe > CMakeFiles\reboot_launcher.dir\utils.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\runner\utils.cpp
<<
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug

runner\CMakeFiles\reboot_launcher.dir\utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/reboot_launcher.dir/utils.cpp.s"
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\runner
	C:\PROGRA~1\MICROS~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\reboot_launcher.dir\utils.cpp.s /c C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\runner\utils.cpp
<<
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug

runner\CMakeFiles\reboot_launcher.dir\win32_window.cpp.obj: runner\CMakeFiles\reboot_launcher.dir\flags.make
runner\CMakeFiles\reboot_launcher.dir\win32_window.cpp.obj: ..\runner\win32_window.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object runner/CMakeFiles/reboot_launcher.dir/win32_window.cpp.obj"
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\runner
	C:\PROGRA~1\MICROS~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\reboot_launcher.dir\win32_window.cpp.obj /FdCMakeFiles\reboot_launcher.dir\ /FS -c C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\runner\win32_window.cpp
<<
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug

runner\CMakeFiles\reboot_launcher.dir\win32_window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/reboot_launcher.dir/win32_window.cpp.i"
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\runner
	C:\PROGRA~1\MICROS~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe > CMakeFiles\reboot_launcher.dir\win32_window.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\runner\win32_window.cpp
<<
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug

runner\CMakeFiles\reboot_launcher.dir\win32_window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/reboot_launcher.dir/win32_window.cpp.s"
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\runner
	C:\PROGRA~1\MICROS~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\reboot_launcher.dir\win32_window.cpp.s /c C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\runner\win32_window.cpp
<<
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug

runner\CMakeFiles\reboot_launcher.dir\__\flutter\generated_plugin_registrant.cc.obj: runner\CMakeFiles\reboot_launcher.dir\flags.make
runner\CMakeFiles\reboot_launcher.dir\__\flutter\generated_plugin_registrant.cc.obj: ..\flutter\generated_plugin_registrant.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object runner/CMakeFiles/reboot_launcher.dir/__/flutter/generated_plugin_registrant.cc.obj"
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\runner
	C:\PROGRA~1\MICROS~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\reboot_launcher.dir\__\flutter\generated_plugin_registrant.cc.obj /FdCMakeFiles\reboot_launcher.dir\ /FS -c C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\flutter\generated_plugin_registrant.cc
<<
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug

runner\CMakeFiles\reboot_launcher.dir\__\flutter\generated_plugin_registrant.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/reboot_launcher.dir/__/flutter/generated_plugin_registrant.cc.i"
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\runner
	C:\PROGRA~1\MICROS~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe > CMakeFiles\reboot_launcher.dir\__\flutter\generated_plugin_registrant.cc.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\flutter\generated_plugin_registrant.cc
<<
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug

runner\CMakeFiles\reboot_launcher.dir\__\flutter\generated_plugin_registrant.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/reboot_launcher.dir/__/flutter/generated_plugin_registrant.cc.s"
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\runner
	C:\PROGRA~1\MICROS~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\reboot_launcher.dir\__\flutter\generated_plugin_registrant.cc.s /c C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\flutter\generated_plugin_registrant.cc
<<
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug

runner\CMakeFiles\reboot_launcher.dir\Runner.rc.res: runner\CMakeFiles\reboot_launcher.dir\flags.make
runner\CMakeFiles\reboot_launcher.dir\Runner.rc.res: ..\runner\Runner.rc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building RC object runner/CMakeFiles/reboot_launcher.dir/Runner.rc.res"
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\runner
	C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\rc.exe $(RC_DEFINES) $(RC_INCLUDES) $(RC_FLAGS) /fo CMakeFiles\reboot_launcher.dir\Runner.rc.res C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\runner\Runner.rc
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug

# Object files for target reboot_launcher
reboot_launcher_OBJECTS = \
"CMakeFiles\reboot_launcher.dir\flutter_window.cpp.obj" \
"CMakeFiles\reboot_launcher.dir\main.cpp.obj" \
"CMakeFiles\reboot_launcher.dir\utils.cpp.obj" \
"CMakeFiles\reboot_launcher.dir\win32_window.cpp.obj" \
"CMakeFiles\reboot_launcher.dir\__\flutter\generated_plugin_registrant.cc.obj" \
"CMakeFiles\reboot_launcher.dir\Runner.rc.res"

# External object files for target reboot_launcher
reboot_launcher_EXTERNAL_OBJECTS =

runner\reboot_launcher.exe: runner\CMakeFiles\reboot_launcher.dir\flutter_window.cpp.obj
runner\reboot_launcher.exe: runner\CMakeFiles\reboot_launcher.dir\main.cpp.obj
runner\reboot_launcher.exe: runner\CMakeFiles\reboot_launcher.dir\utils.cpp.obj
runner\reboot_launcher.exe: runner\CMakeFiles\reboot_launcher.dir\win32_window.cpp.obj
runner\reboot_launcher.exe: runner\CMakeFiles\reboot_launcher.dir\__\flutter\generated_plugin_registrant.cc.obj
runner\reboot_launcher.exe: runner\CMakeFiles\reboot_launcher.dir\Runner.rc.res
runner\reboot_launcher.exe: runner\CMakeFiles\reboot_launcher.dir\build.make
runner\reboot_launcher.exe: flutter\flutter_wrapper_app.lib
runner\reboot_launcher.exe: plugins\app_links\app_links_plugin.lib
runner\reboot_launcher.exe: plugins\bitsdojo_window_windows\bitsdojo_window_windows_plugin.lib
runner\reboot_launcher.exe: plugins\flutter_acrylic\flutter_acrylic_plugin.lib
runner\reboot_launcher.exe: plugins\screen_retriever\screen_retriever_plugin.lib
runner\reboot_launcher.exe: plugins\system_theme\system_theme_plugin.lib
runner\reboot_launcher.exe: plugins\url_launcher_windows\url_launcher_windows_plugin.lib
runner\reboot_launcher.exe: plugins\window_manager\window_manager_plugin.lib
runner\reboot_launcher.exe: flutter\flutter_wrapper_plugin.lib
runner\reboot_launcher.exe: ..\flutter\ephemeral\flutter_windows.dll.lib
runner\reboot_launcher.exe: ..\runner\runner.exe.manifest
runner\reboot_launcher.exe: runner\CMakeFiles\reboot_launcher.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable reboot_launcher.exe"
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\runner
	"C:\Program Files\JetBrains\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\reboot_launcher.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\mt.exe --manifests ..\..\runner\runner.exe.manifest -- C:\PROGRA~1\MICROS~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\reboot_launcher.dir\objects1.rsp @<<
 /out:reboot_launcher.exe /implib:reboot_launcher.lib /pdb:C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\runner\reboot_launcher.pdb /version:0.0  /machine:X86 /debug /INCREMENTAL /subsystem:windows  ..\flutter\flutter_wrapper_app.lib ..\plugins\app_links\app_links_plugin.lib ..\plugins\bitsdojo_window_windows\bitsdojo_window_windows_plugin.lib ..\plugins\flutter_acrylic\flutter_acrylic_plugin.lib ..\plugins\screen_retriever\screen_retriever_plugin.lib ..\plugins\system_theme\system_theme_plugin.lib ..\plugins\url_launcher_windows\url_launcher_windows_plugin.lib ..\plugins\window_manager\window_manager_plugin.lib ..\flutter\flutter_wrapper_plugin.lib ..\..\flutter\ephemeral\flutter_windows.dll.lib Dwmapi.lib Comctl32.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug

# Rule to build all files generated by this target.
runner\CMakeFiles\reboot_launcher.dir\build: runner\reboot_launcher.exe

.PHONY : runner\CMakeFiles\reboot_launcher.dir\build

runner\CMakeFiles\reboot_launcher.dir\clean:
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\runner
	$(CMAKE_COMMAND) -P CMakeFiles\reboot_launcher.dir\cmake_clean.cmake
	cd C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug
.PHONY : runner\CMakeFiles\reboot_launcher.dir\clean

runner\CMakeFiles\reboot_launcher.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\runner C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\runner C:\Users\alaut\AndroidStudioProjects\reboot_launcher\windows\cmake-build-debug\runner\CMakeFiles\reboot_launcher.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : runner\CMakeFiles\reboot_launcher.dir\depend
