# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "base_drive_chain: 8 messages, 2 services")

set(MSG_I_FLAGS "-Ibase_drive_chain:/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(base_drive_chain_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/MotorState.msg" NAME_WE)
add_custom_target(_base_drive_chain_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "base_drive_chain" "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/MotorState.msg" ""
)

get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerData.msg" NAME_WE)
add_custom_target(_base_drive_chain_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "base_drive_chain" "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerData.msg" "base_drive_chain/ControllerConfig:base_drive_chain/MotorState:base_drive_chain/ControllerState"
)

get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerInfo.msg" NAME_WE)
add_custom_target(_base_drive_chain_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "base_drive_chain" "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerInfo.msg" ""
)

get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/BaseState.msg" NAME_WE)
add_custom_target(_base_drive_chain_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "base_drive_chain" "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/BaseState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerState.msg" NAME_WE)
add_custom_target(_base_drive_chain_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "base_drive_chain" "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerState.msg" ""
)

get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/MotorControllerSetup.srv" NAME_WE)
add_custom_target(_base_drive_chain_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "base_drive_chain" "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/MotorControllerSetup.srv" ""
)

get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/RoboteqMode.srv" NAME_WE)
add_custom_target(_base_drive_chain_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "base_drive_chain" "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/RoboteqMode.srv" ""
)

get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ThorvaldTwist.msg" NAME_WE)
add_custom_target(_base_drive_chain_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "base_drive_chain" "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ThorvaldTwist.msg" "geometry_msgs/Vector3:geometry_msgs/TwistWithCovarianceStamped:geometry_msgs/Twist:std_msgs/Header:geometry_msgs/TwistWithCovariance"
)

get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerConfig.msg" NAME_WE)
add_custom_target(_base_drive_chain_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "base_drive_chain" "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerConfig.msg" ""
)

get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerArray.msg" NAME_WE)
add_custom_target(_base_drive_chain_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "base_drive_chain" "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerArray.msg" "base_drive_chain/ControllerConfig:base_drive_chain/ControllerState:std_msgs/Header:base_drive_chain/MotorState:base_drive_chain/ControllerData"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/base_drive_chain
)
_generate_msg_cpp(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/base_drive_chain
)
_generate_msg_cpp(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ThorvaldTwist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/base_drive_chain
)
_generate_msg_cpp(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/BaseState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/base_drive_chain
)
_generate_msg_cpp(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/base_drive_chain
)
_generate_msg_cpp(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/base_drive_chain
)
_generate_msg_cpp(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerData.msg"
  "${MSG_I_FLAGS}"
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerConfig.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/MotorState.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/base_drive_chain
)
_generate_msg_cpp(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerArray.msg"
  "${MSG_I_FLAGS}"
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerConfig.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/MotorState.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/base_drive_chain
)

### Generating Services
_generate_srv_cpp(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/MotorControllerSetup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/base_drive_chain
)
_generate_srv_cpp(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/RoboteqMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/base_drive_chain
)

### Generating Module File
_generate_module_cpp(base_drive_chain
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/base_drive_chain
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(base_drive_chain_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(base_drive_chain_generate_messages base_drive_chain_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/MotorState.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_cpp _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerData.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_cpp _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerInfo.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_cpp _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/BaseState.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_cpp _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerState.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_cpp _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/MotorControllerSetup.srv" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_cpp _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/RoboteqMode.srv" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_cpp _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ThorvaldTwist.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_cpp _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerConfig.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_cpp _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerArray.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_cpp _base_drive_chain_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(base_drive_chain_gencpp)
add_dependencies(base_drive_chain_gencpp base_drive_chain_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS base_drive_chain_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/base_drive_chain
)
_generate_msg_eus(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/base_drive_chain
)
_generate_msg_eus(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ThorvaldTwist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/base_drive_chain
)
_generate_msg_eus(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/BaseState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/base_drive_chain
)
_generate_msg_eus(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/base_drive_chain
)
_generate_msg_eus(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/base_drive_chain
)
_generate_msg_eus(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerData.msg"
  "${MSG_I_FLAGS}"
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerConfig.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/MotorState.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/base_drive_chain
)
_generate_msg_eus(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerArray.msg"
  "${MSG_I_FLAGS}"
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerConfig.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/MotorState.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerData.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/base_drive_chain
)

### Generating Services
_generate_srv_eus(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/MotorControllerSetup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/base_drive_chain
)
_generate_srv_eus(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/RoboteqMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/base_drive_chain
)

### Generating Module File
_generate_module_eus(base_drive_chain
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/base_drive_chain
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(base_drive_chain_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(base_drive_chain_generate_messages base_drive_chain_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/MotorState.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_eus _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerData.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_eus _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerInfo.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_eus _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/BaseState.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_eus _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerState.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_eus _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/MotorControllerSetup.srv" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_eus _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/RoboteqMode.srv" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_eus _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ThorvaldTwist.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_eus _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerConfig.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_eus _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerArray.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_eus _base_drive_chain_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(base_drive_chain_geneus)
add_dependencies(base_drive_chain_geneus base_drive_chain_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS base_drive_chain_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/base_drive_chain
)
_generate_msg_lisp(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/base_drive_chain
)
_generate_msg_lisp(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ThorvaldTwist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/base_drive_chain
)
_generate_msg_lisp(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/BaseState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/base_drive_chain
)
_generate_msg_lisp(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/base_drive_chain
)
_generate_msg_lisp(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/base_drive_chain
)
_generate_msg_lisp(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerData.msg"
  "${MSG_I_FLAGS}"
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerConfig.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/MotorState.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/base_drive_chain
)
_generate_msg_lisp(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerArray.msg"
  "${MSG_I_FLAGS}"
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerConfig.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/MotorState.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/base_drive_chain
)

### Generating Services
_generate_srv_lisp(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/MotorControllerSetup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/base_drive_chain
)
_generate_srv_lisp(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/RoboteqMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/base_drive_chain
)

### Generating Module File
_generate_module_lisp(base_drive_chain
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/base_drive_chain
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(base_drive_chain_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(base_drive_chain_generate_messages base_drive_chain_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/MotorState.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_lisp _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerData.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_lisp _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerInfo.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_lisp _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/BaseState.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_lisp _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerState.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_lisp _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/MotorControllerSetup.srv" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_lisp _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/RoboteqMode.srv" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_lisp _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ThorvaldTwist.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_lisp _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerConfig.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_lisp _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerArray.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_lisp _base_drive_chain_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(base_drive_chain_genlisp)
add_dependencies(base_drive_chain_genlisp base_drive_chain_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS base_drive_chain_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/base_drive_chain
)
_generate_msg_nodejs(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/base_drive_chain
)
_generate_msg_nodejs(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ThorvaldTwist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/base_drive_chain
)
_generate_msg_nodejs(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/BaseState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/base_drive_chain
)
_generate_msg_nodejs(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/base_drive_chain
)
_generate_msg_nodejs(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/base_drive_chain
)
_generate_msg_nodejs(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerData.msg"
  "${MSG_I_FLAGS}"
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerConfig.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/MotorState.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/base_drive_chain
)
_generate_msg_nodejs(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerArray.msg"
  "${MSG_I_FLAGS}"
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerConfig.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/MotorState.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/base_drive_chain
)

### Generating Services
_generate_srv_nodejs(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/MotorControllerSetup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/base_drive_chain
)
_generate_srv_nodejs(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/RoboteqMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/base_drive_chain
)

### Generating Module File
_generate_module_nodejs(base_drive_chain
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/base_drive_chain
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(base_drive_chain_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(base_drive_chain_generate_messages base_drive_chain_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/MotorState.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_nodejs _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerData.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_nodejs _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerInfo.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_nodejs _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/BaseState.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_nodejs _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerState.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_nodejs _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/MotorControllerSetup.srv" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_nodejs _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/RoboteqMode.srv" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_nodejs _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ThorvaldTwist.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_nodejs _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerConfig.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_nodejs _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerArray.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_nodejs _base_drive_chain_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(base_drive_chain_gennodejs)
add_dependencies(base_drive_chain_gennodejs base_drive_chain_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS base_drive_chain_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/MotorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/base_drive_chain
)
_generate_msg_py(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/base_drive_chain
)
_generate_msg_py(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ThorvaldTwist.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/base_drive_chain
)
_generate_msg_py(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/BaseState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/base_drive_chain
)
_generate_msg_py(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/base_drive_chain
)
_generate_msg_py(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/base_drive_chain
)
_generate_msg_py(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerData.msg"
  "${MSG_I_FLAGS}"
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerConfig.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/MotorState.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/base_drive_chain
)
_generate_msg_py(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerArray.msg"
  "${MSG_I_FLAGS}"
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerConfig.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/MotorState.msg;/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/base_drive_chain
)

### Generating Services
_generate_srv_py(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/MotorControllerSetup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/base_drive_chain
)
_generate_srv_py(base_drive_chain
  "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/RoboteqMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/base_drive_chain
)

### Generating Module File
_generate_module_py(base_drive_chain
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/base_drive_chain
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(base_drive_chain_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(base_drive_chain_generate_messages base_drive_chain_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/MotorState.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_py _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerData.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_py _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerInfo.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_py _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/BaseState.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_py _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerState.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_py _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/MotorControllerSetup.srv" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_py _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/srv/RoboteqMode.srv" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_py _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ThorvaldTwist.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_py _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerConfig.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_py _base_drive_chain_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vigneshnuc/catkin_ws/src/Thorvald/base_driver/msg/ControllerArray.msg" NAME_WE)
add_dependencies(base_drive_chain_generate_messages_py _base_drive_chain_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(base_drive_chain_genpy)
add_dependencies(base_drive_chain_genpy base_drive_chain_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS base_drive_chain_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/base_drive_chain)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/base_drive_chain
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(base_drive_chain_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(base_drive_chain_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/base_drive_chain)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/base_drive_chain
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(base_drive_chain_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(base_drive_chain_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/base_drive_chain)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/base_drive_chain
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(base_drive_chain_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(base_drive_chain_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/base_drive_chain)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/base_drive_chain
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(base_drive_chain_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(base_drive_chain_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/base_drive_chain)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/base_drive_chain\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/base_drive_chain
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(base_drive_chain_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(base_drive_chain_generate_messages_py std_msgs_generate_messages_py)
endif()
