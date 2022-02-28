# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "berry_pkg: 6 messages, 5 services")

set(MSG_I_FLAGS "-Iberry_pkg:/home/park/berry_project/catkin_ws/src/berry_pkg/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(berry_pkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetPosition.msg" NAME_WE)
add_custom_target(_berry_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "berry_pkg" "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetPosition.msg" ""
)

get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BulkGetItem.srv" NAME_WE)
add_custom_target(_berry_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "berry_pkg" "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BulkGetItem.srv" ""
)

get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryKine.srv" NAME_WE)
add_custom_target(_berry_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "berry_pkg" "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryKine.srv" ""
)

get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetAngle.msg" NAME_WE)
add_custom_target(_berry_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "berry_pkg" "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetAngle.msg" ""
)

get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SetPosition.msg" NAME_WE)
add_custom_target(_berry_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "berry_pkg" "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SetPosition.msg" ""
)

get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/SyncGetPosition.srv" NAME_WE)
add_custom_target(_berry_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "berry_pkg" "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/SyncGetPosition.srv" ""
)

get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BulkSetItem.msg" NAME_WE)
add_custom_target(_berry_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "berry_pkg" "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BulkSetItem.msg" ""
)

get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/GetPosition.srv" NAME_WE)
add_custom_target(_berry_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "berry_pkg" "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/GetPosition.srv" ""
)

get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SyncSetPosition.msg" NAME_WE)
add_custom_target(_berry_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "berry_pkg" "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SyncSetPosition.msg" ""
)

get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryGetPosition.srv" NAME_WE)
add_custom_target(_berry_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "berry_pkg" "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryGetPosition.srv" ""
)

get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerryPos.msg" NAME_WE)
add_custom_target(_berry_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "berry_pkg" "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerryPos.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/berry_pkg
)
_generate_msg_cpp(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/berry_pkg
)
_generate_msg_cpp(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BulkSetItem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/berry_pkg
)
_generate_msg_cpp(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SetPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/berry_pkg
)
_generate_msg_cpp(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SyncSetPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/berry_pkg
)
_generate_msg_cpp(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerryPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/berry_pkg
)

### Generating Services
_generate_srv_cpp(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/SyncGetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/berry_pkg
)
_generate_srv_cpp(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryGetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/berry_pkg
)
_generate_srv_cpp(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BulkGetItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/berry_pkg
)
_generate_srv_cpp(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/GetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/berry_pkg
)
_generate_srv_cpp(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryKine.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/berry_pkg
)

### Generating Module File
_generate_module_cpp(berry_pkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/berry_pkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(berry_pkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(berry_pkg_generate_messages berry_pkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetPosition.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_cpp _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BulkGetItem.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_cpp _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryKine.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_cpp _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetAngle.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_cpp _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SetPosition.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_cpp _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/SyncGetPosition.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_cpp _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BulkSetItem.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_cpp _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/GetPosition.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_cpp _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SyncSetPosition.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_cpp _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryGetPosition.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_cpp _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerryPos.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_cpp _berry_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(berry_pkg_gencpp)
add_dependencies(berry_pkg_gencpp berry_pkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS berry_pkg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/berry_pkg
)
_generate_msg_eus(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/berry_pkg
)
_generate_msg_eus(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BulkSetItem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/berry_pkg
)
_generate_msg_eus(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SetPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/berry_pkg
)
_generate_msg_eus(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SyncSetPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/berry_pkg
)
_generate_msg_eus(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerryPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/berry_pkg
)

### Generating Services
_generate_srv_eus(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/SyncGetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/berry_pkg
)
_generate_srv_eus(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryGetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/berry_pkg
)
_generate_srv_eus(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BulkGetItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/berry_pkg
)
_generate_srv_eus(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/GetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/berry_pkg
)
_generate_srv_eus(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryKine.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/berry_pkg
)

### Generating Module File
_generate_module_eus(berry_pkg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/berry_pkg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(berry_pkg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(berry_pkg_generate_messages berry_pkg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetPosition.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_eus _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BulkGetItem.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_eus _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryKine.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_eus _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetAngle.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_eus _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SetPosition.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_eus _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/SyncGetPosition.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_eus _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BulkSetItem.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_eus _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/GetPosition.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_eus _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SyncSetPosition.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_eus _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryGetPosition.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_eus _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerryPos.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_eus _berry_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(berry_pkg_geneus)
add_dependencies(berry_pkg_geneus berry_pkg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS berry_pkg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/berry_pkg
)
_generate_msg_lisp(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/berry_pkg
)
_generate_msg_lisp(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BulkSetItem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/berry_pkg
)
_generate_msg_lisp(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SetPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/berry_pkg
)
_generate_msg_lisp(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SyncSetPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/berry_pkg
)
_generate_msg_lisp(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerryPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/berry_pkg
)

### Generating Services
_generate_srv_lisp(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/SyncGetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/berry_pkg
)
_generate_srv_lisp(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryGetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/berry_pkg
)
_generate_srv_lisp(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BulkGetItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/berry_pkg
)
_generate_srv_lisp(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/GetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/berry_pkg
)
_generate_srv_lisp(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryKine.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/berry_pkg
)

### Generating Module File
_generate_module_lisp(berry_pkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/berry_pkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(berry_pkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(berry_pkg_generate_messages berry_pkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetPosition.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_lisp _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BulkGetItem.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_lisp _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryKine.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_lisp _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetAngle.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_lisp _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SetPosition.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_lisp _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/SyncGetPosition.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_lisp _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BulkSetItem.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_lisp _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/GetPosition.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_lisp _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SyncSetPosition.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_lisp _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryGetPosition.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_lisp _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerryPos.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_lisp _berry_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(berry_pkg_genlisp)
add_dependencies(berry_pkg_genlisp berry_pkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS berry_pkg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/berry_pkg
)
_generate_msg_nodejs(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/berry_pkg
)
_generate_msg_nodejs(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BulkSetItem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/berry_pkg
)
_generate_msg_nodejs(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SetPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/berry_pkg
)
_generate_msg_nodejs(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SyncSetPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/berry_pkg
)
_generate_msg_nodejs(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerryPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/berry_pkg
)

### Generating Services
_generate_srv_nodejs(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/SyncGetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/berry_pkg
)
_generate_srv_nodejs(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryGetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/berry_pkg
)
_generate_srv_nodejs(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BulkGetItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/berry_pkg
)
_generate_srv_nodejs(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/GetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/berry_pkg
)
_generate_srv_nodejs(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryKine.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/berry_pkg
)

### Generating Module File
_generate_module_nodejs(berry_pkg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/berry_pkg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(berry_pkg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(berry_pkg_generate_messages berry_pkg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetPosition.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_nodejs _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BulkGetItem.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_nodejs _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryKine.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_nodejs _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetAngle.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_nodejs _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SetPosition.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_nodejs _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/SyncGetPosition.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_nodejs _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BulkSetItem.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_nodejs _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/GetPosition.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_nodejs _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SyncSetPosition.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_nodejs _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryGetPosition.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_nodejs _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerryPos.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_nodejs _berry_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(berry_pkg_gennodejs)
add_dependencies(berry_pkg_gennodejs berry_pkg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS berry_pkg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/berry_pkg
)
_generate_msg_py(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/berry_pkg
)
_generate_msg_py(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BulkSetItem.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/berry_pkg
)
_generate_msg_py(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SetPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/berry_pkg
)
_generate_msg_py(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SyncSetPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/berry_pkg
)
_generate_msg_py(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerryPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/berry_pkg
)

### Generating Services
_generate_srv_py(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/SyncGetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/berry_pkg
)
_generate_srv_py(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryGetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/berry_pkg
)
_generate_srv_py(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BulkGetItem.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/berry_pkg
)
_generate_srv_py(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/GetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/berry_pkg
)
_generate_srv_py(berry_pkg
  "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryKine.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/berry_pkg
)

### Generating Module File
_generate_module_py(berry_pkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/berry_pkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(berry_pkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(berry_pkg_generate_messages berry_pkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetPosition.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_py _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BulkGetItem.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_py _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryKine.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_py _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerrySetAngle.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_py _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SetPosition.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_py _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/SyncGetPosition.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_py _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BulkSetItem.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_py _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/GetPosition.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_py _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/SyncSetPosition.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_py _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/srv/BerryGetPosition.srv" NAME_WE)
add_dependencies(berry_pkg_generate_messages_py _berry_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/park/berry_project/catkin_ws/src/berry_pkg/msg/BerryPos.msg" NAME_WE)
add_dependencies(berry_pkg_generate_messages_py _berry_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(berry_pkg_genpy)
add_dependencies(berry_pkg_genpy berry_pkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS berry_pkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/berry_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/berry_pkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(berry_pkg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/berry_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/berry_pkg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(berry_pkg_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/berry_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/berry_pkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(berry_pkg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/berry_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/berry_pkg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(berry_pkg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/berry_pkg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/berry_pkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/berry_pkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(berry_pkg_generate_messages_py std_msgs_generate_messages_py)
endif()
