# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/build

# Utility rule file for pkg_generate_messages_nodejs.

# Include the progress variables for this target.
include pkg/CMakeFiles/pkg_generate_messages_nodejs.dir/progress.make

pkg/CMakeFiles/pkg_generate_messages_nodejs: /home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/devel/share/gennodejs/ros/pkg/msg/msgs.js
pkg/CMakeFiles/pkg_generate_messages_nodejs: /home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/devel/share/gennodejs/ros/pkg/srv/servs.js


/home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/devel/share/gennodejs/ros/pkg/msg/msgs.js: /opt/ros/melodic/lib/gennodejs/gen_nodejs.py
/home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/devel/share/gennodejs/ros/pkg/msg/msgs.js: /home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/src/pkg/msg/msgs.msg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating Javascript code from pkg/msgs.msg"
	cd /home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/build/pkg && ../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gennodejs/cmake/../../../lib/gennodejs/gen_nodejs.py /home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/src/pkg/msg/msgs.msg -Ipkg:/home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/src/pkg/msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p pkg -o /home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/devel/share/gennodejs/ros/pkg/msg

/home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/devel/share/gennodejs/ros/pkg/srv/servs.js: /opt/ros/melodic/lib/gennodejs/gen_nodejs.py
/home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/devel/share/gennodejs/ros/pkg/srv/servs.js: /home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/src/pkg/srv/servs.srv
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating Javascript code from pkg/servs.srv"
	cd /home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/build/pkg && ../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gennodejs/cmake/../../../lib/gennodejs/gen_nodejs.py /home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/src/pkg/srv/servs.srv -Ipkg:/home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/src/pkg/msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p pkg -o /home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/devel/share/gennodejs/ros/pkg/srv

pkg_generate_messages_nodejs: pkg/CMakeFiles/pkg_generate_messages_nodejs
pkg_generate_messages_nodejs: /home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/devel/share/gennodejs/ros/pkg/msg/msgs.js
pkg_generate_messages_nodejs: /home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/devel/share/gennodejs/ros/pkg/srv/servs.js
pkg_generate_messages_nodejs: pkg/CMakeFiles/pkg_generate_messages_nodejs.dir/build.make

.PHONY : pkg_generate_messages_nodejs

# Rule to build all files generated by this target.
pkg/CMakeFiles/pkg_generate_messages_nodejs.dir/build: pkg_generate_messages_nodejs

.PHONY : pkg/CMakeFiles/pkg_generate_messages_nodejs.dir/build

pkg/CMakeFiles/pkg_generate_messages_nodejs.dir/clean:
	cd /home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/build/pkg && $(CMAKE_COMMAND) -P CMakeFiles/pkg_generate_messages_nodejs.dir/cmake_clean.cmake
.PHONY : pkg/CMakeFiles/pkg_generate_messages_nodejs.dir/clean

pkg/CMakeFiles/pkg_generate_messages_nodejs.dir/depend:
	cd /home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/src /home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/src/pkg /home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/build /home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/build/pkg /home/fatema/Documents/AUCRobotics/Day4/tasks/catkin_ws/build/pkg/CMakeFiles/pkg_generate_messages_nodejs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : pkg/CMakeFiles/pkg_generate_messages_nodejs.dir/depend

