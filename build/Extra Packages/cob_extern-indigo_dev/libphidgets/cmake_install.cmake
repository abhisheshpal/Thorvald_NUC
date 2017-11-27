# Install script for directory: /home/vigneshnuc/catkin_ws/src/Extra Packages/cob_extern-indigo_dev/libphidgets

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/vigneshnuc/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/vigneshnuc/catkin_ws/build/Extra Packages/cob_extern-indigo_dev/libphidgets/catkin_generated/installspace/libphidgets.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/libphidgets/cmake" TYPE FILE FILES "/home/vigneshnuc/catkin_ws/build/Extra Packages/cob_extern-indigo_dev/libphidgets/catkin_generated/installspace/libphidgets-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/libphidgets/cmake" TYPE FILE FILES
    "/home/vigneshnuc/catkin_ws/build/Extra Packages/cob_extern-indigo_dev/libphidgets/catkin_generated/installspace/libphidgetsConfig.cmake"
    "/home/vigneshnuc/catkin_ws/build/Extra Packages/cob_extern-indigo_dev/libphidgets/catkin_generated/installspace/libphidgetsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/libphidgets" TYPE FILE FILES "/home/vigneshnuc/catkin_ws/src/Extra Packages/cob_extern-indigo_dev/libphidgets/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libphidgets" TYPE DIRECTORY FILES "/home/vigneshnuc/catkin_ws/devel/include/libphidgets/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE PROGRAM FILES
    "/home/vigneshnuc/catkin_ws/devel/lib/libphidget21.so"
    "/home/vigneshnuc/catkin_ws/devel/lib/libphidget21.so.0"
    "/home/vigneshnuc/catkin_ws/devel/lib/libphidget21.so.0.0.0"
    )
endif()

