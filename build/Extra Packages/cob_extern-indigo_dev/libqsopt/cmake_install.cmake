# Install script for directory: /home/vigneshnuc/catkin_ws/src/Extra Packages/cob_extern-indigo_dev/libqsopt

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/vigneshnuc/catkin_ws/build/Extra Packages/cob_extern-indigo_dev/libqsopt/catkin_generated/installspace/libqsopt.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/libqsopt/cmake" TYPE FILE FILES "/home/vigneshnuc/catkin_ws/build/Extra Packages/cob_extern-indigo_dev/libqsopt/catkin_generated/installspace/libqsopt-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/libqsopt/cmake" TYPE FILE FILES
    "/home/vigneshnuc/catkin_ws/build/Extra Packages/cob_extern-indigo_dev/libqsopt/catkin_generated/installspace/libqsoptConfig.cmake"
    "/home/vigneshnuc/catkin_ws/build/Extra Packages/cob_extern-indigo_dev/libqsopt/catkin_generated/installspace/libqsoptConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/libqsopt" TYPE FILE FILES "/home/vigneshnuc/catkin_ws/src/Extra Packages/cob_extern-indigo_dev/libqsopt/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libqsopt" TYPE FILE FILES "/home/vigneshnuc/catkin_ws/src/Extra Packages/cob_extern-indigo_dev/libqsopt/common/lib/Qsopt_64/qsopt.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/home/vigneshnuc/catkin_ws/src/Extra Packages/cob_extern-indigo_dev/libqsopt/common/lib/Qsopt_64/qsopt.a")
endif()

