# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "thorvald_ii_control: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ithorvald_ii_control:/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Icontrol_msgs:/opt/ros/kinetic/share/control_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(thorvald_ii_control_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/ThorvaldTwist.msg" NAME_WE)
add_custom_target(_thorvald_ii_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "thorvald_ii_control" "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/ThorvaldTwist.msg" "geometry_msgs/Vector3:geometry_msgs/TwistWithCovarianceStamped:geometry_msgs/Twist:std_msgs/Header:geometry_msgs/TwistWithCovariance"
)

get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/BaseState.msg" NAME_WE)
add_custom_target(_thorvald_ii_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "thorvald_ii_control" "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/BaseState.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(thorvald_ii_control
  "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/ThorvaldTwist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/thorvald_ii_control
)
_generate_msg_cpp(thorvald_ii_control
  "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/BaseState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/thorvald_ii_control
)

### Generating Services

### Generating Module File
_generate_module_cpp(thorvald_ii_control
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/thorvald_ii_control
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(thorvald_ii_control_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(thorvald_ii_control_generate_messages thorvald_ii_control_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/ThorvaldTwist.msg" NAME_WE)
add_dependencies(thorvald_ii_control_generate_messages_cpp _thorvald_ii_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/BaseState.msg" NAME_WE)
add_dependencies(thorvald_ii_control_generate_messages_cpp _thorvald_ii_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(thorvald_ii_control_gencpp)
add_dependencies(thorvald_ii_control_gencpp thorvald_ii_control_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS thorvald_ii_control_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(thorvald_ii_control
  "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/ThorvaldTwist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/thorvald_ii_control
)
_generate_msg_eus(thorvald_ii_control
  "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/BaseState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/thorvald_ii_control
)

### Generating Services

### Generating Module File
_generate_module_eus(thorvald_ii_control
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/thorvald_ii_control
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(thorvald_ii_control_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(thorvald_ii_control_generate_messages thorvald_ii_control_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/ThorvaldTwist.msg" NAME_WE)
add_dependencies(thorvald_ii_control_generate_messages_eus _thorvald_ii_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/BaseState.msg" NAME_WE)
add_dependencies(thorvald_ii_control_generate_messages_eus _thorvald_ii_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(thorvald_ii_control_geneus)
add_dependencies(thorvald_ii_control_geneus thorvald_ii_control_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS thorvald_ii_control_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(thorvald_ii_control
  "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/ThorvaldTwist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/thorvald_ii_control
)
_generate_msg_lisp(thorvald_ii_control
  "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/BaseState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/thorvald_ii_control
)

### Generating Services

### Generating Module File
_generate_module_lisp(thorvald_ii_control
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/thorvald_ii_control
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(thorvald_ii_control_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(thorvald_ii_control_generate_messages thorvald_ii_control_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/ThorvaldTwist.msg" NAME_WE)
add_dependencies(thorvald_ii_control_generate_messages_lisp _thorvald_ii_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/BaseState.msg" NAME_WE)
add_dependencies(thorvald_ii_control_generate_messages_lisp _thorvald_ii_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(thorvald_ii_control_genlisp)
add_dependencies(thorvald_ii_control_genlisp thorvald_ii_control_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS thorvald_ii_control_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(thorvald_ii_control
  "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/ThorvaldTwist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/thorvald_ii_control
)
_generate_msg_nodejs(thorvald_ii_control
  "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/BaseState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/thorvald_ii_control
)

### Generating Services

### Generating Module File
_generate_module_nodejs(thorvald_ii_control
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/thorvald_ii_control
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(thorvald_ii_control_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(thorvald_ii_control_generate_messages thorvald_ii_control_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/ThorvaldTwist.msg" NAME_WE)
add_dependencies(thorvald_ii_control_generate_messages_nodejs _thorvald_ii_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/BaseState.msg" NAME_WE)
add_dependencies(thorvald_ii_control_generate_messages_nodejs _thorvald_ii_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(thorvald_ii_control_gennodejs)
add_dependencies(thorvald_ii_control_gennodejs thorvald_ii_control_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS thorvald_ii_control_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(thorvald_ii_control
  "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/ThorvaldTwist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/thorvald_ii_control
)
_generate_msg_py(thorvald_ii_control
  "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/BaseState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/thorvald_ii_control
)

### Generating Services

### Generating Module File
_generate_module_py(thorvald_ii_control
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/thorvald_ii_control
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(thorvald_ii_control_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(thorvald_ii_control_generate_messages thorvald_ii_control_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/ThorvaldTwist.msg" NAME_WE)
add_dependencies(thorvald_ii_control_generate_messages_py _thorvald_ii_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/thorvald_ii_control/msg/BaseState.msg" NAME_WE)
add_dependencies(thorvald_ii_control_generate_messages_py _thorvald_ii_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(thorvald_ii_control_genpy)
add_dependencies(thorvald_ii_control_genpy thorvald_ii_control_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS thorvald_ii_control_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/thorvald_ii_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/thorvald_ii_control
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(thorvald_ii_control_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(thorvald_ii_control_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(thorvald_ii_control_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET control_msgs_generate_messages_cpp)
  add_dependencies(thorvald_ii_control_generate_messages_cpp control_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/thorvald_ii_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/thorvald_ii_control
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(thorvald_ii_control_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(thorvald_ii_control_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(thorvald_ii_control_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET control_msgs_generate_messages_eus)
  add_dependencies(thorvald_ii_control_generate_messages_eus control_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/thorvald_ii_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/thorvald_ii_control
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(thorvald_ii_control_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(thorvald_ii_control_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(thorvald_ii_control_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET control_msgs_generate_messages_lisp)
  add_dependencies(thorvald_ii_control_generate_messages_lisp control_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/thorvald_ii_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/thorvald_ii_control
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(thorvald_ii_control_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(thorvald_ii_control_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(thorvald_ii_control_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET control_msgs_generate_messages_nodejs)
  add_dependencies(thorvald_ii_control_generate_messages_nodejs control_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/thorvald_ii_control)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/thorvald_ii_control\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/thorvald_ii_control
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(thorvald_ii_control_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(thorvald_ii_control_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(thorvald_ii_control_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET control_msgs_generate_messages_py)
  add_dependencies(thorvald_ii_control_generate_messages_py control_msgs_generate_messages_py)
endif()
