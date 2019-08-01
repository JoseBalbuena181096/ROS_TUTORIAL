# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_essentials_cpp_user: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iros_essentials_cpp_user:/home/jose/catkin_ws/src/ros_essentials_cpp_user/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_essentials_cpp_user_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jose/catkin_ws/src/ros_essentials_cpp_user/msg/IoTSensor1.msg" NAME_WE)
add_custom_target(_ros_essentials_cpp_user_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_essentials_cpp_user" "/home/jose/catkin_ws/src/ros_essentials_cpp_user/msg/IoTSensor1.msg" ""
)

get_filename_component(_filename "/home/jose/catkin_ws/src/ros_essentials_cpp_user/srv/AddTwoints.srv" NAME_WE)
add_custom_target(_ros_essentials_cpp_user_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_essentials_cpp_user" "/home/jose/catkin_ws/src/ros_essentials_cpp_user/srv/AddTwoints.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ros_essentials_cpp_user
  "/home/jose/catkin_ws/src/ros_essentials_cpp_user/msg/IoTSensor1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_essentials_cpp_user
)

### Generating Services
_generate_srv_cpp(ros_essentials_cpp_user
  "/home/jose/catkin_ws/src/ros_essentials_cpp_user/srv/AddTwoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_essentials_cpp_user
)

### Generating Module File
_generate_module_cpp(ros_essentials_cpp_user
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_essentials_cpp_user
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_essentials_cpp_user_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_essentials_cpp_user_generate_messages ros_essentials_cpp_user_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jose/catkin_ws/src/ros_essentials_cpp_user/msg/IoTSensor1.msg" NAME_WE)
add_dependencies(ros_essentials_cpp_user_generate_messages_cpp _ros_essentials_cpp_user_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jose/catkin_ws/src/ros_essentials_cpp_user/srv/AddTwoints.srv" NAME_WE)
add_dependencies(ros_essentials_cpp_user_generate_messages_cpp _ros_essentials_cpp_user_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_essentials_cpp_user_gencpp)
add_dependencies(ros_essentials_cpp_user_gencpp ros_essentials_cpp_user_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_essentials_cpp_user_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ros_essentials_cpp_user
  "/home/jose/catkin_ws/src/ros_essentials_cpp_user/msg/IoTSensor1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_essentials_cpp_user
)

### Generating Services
_generate_srv_eus(ros_essentials_cpp_user
  "/home/jose/catkin_ws/src/ros_essentials_cpp_user/srv/AddTwoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_essentials_cpp_user
)

### Generating Module File
_generate_module_eus(ros_essentials_cpp_user
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_essentials_cpp_user
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ros_essentials_cpp_user_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ros_essentials_cpp_user_generate_messages ros_essentials_cpp_user_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jose/catkin_ws/src/ros_essentials_cpp_user/msg/IoTSensor1.msg" NAME_WE)
add_dependencies(ros_essentials_cpp_user_generate_messages_eus _ros_essentials_cpp_user_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jose/catkin_ws/src/ros_essentials_cpp_user/srv/AddTwoints.srv" NAME_WE)
add_dependencies(ros_essentials_cpp_user_generate_messages_eus _ros_essentials_cpp_user_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_essentials_cpp_user_geneus)
add_dependencies(ros_essentials_cpp_user_geneus ros_essentials_cpp_user_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_essentials_cpp_user_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ros_essentials_cpp_user
  "/home/jose/catkin_ws/src/ros_essentials_cpp_user/msg/IoTSensor1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_essentials_cpp_user
)

### Generating Services
_generate_srv_lisp(ros_essentials_cpp_user
  "/home/jose/catkin_ws/src/ros_essentials_cpp_user/srv/AddTwoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_essentials_cpp_user
)

### Generating Module File
_generate_module_lisp(ros_essentials_cpp_user
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_essentials_cpp_user
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_essentials_cpp_user_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_essentials_cpp_user_generate_messages ros_essentials_cpp_user_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jose/catkin_ws/src/ros_essentials_cpp_user/msg/IoTSensor1.msg" NAME_WE)
add_dependencies(ros_essentials_cpp_user_generate_messages_lisp _ros_essentials_cpp_user_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jose/catkin_ws/src/ros_essentials_cpp_user/srv/AddTwoints.srv" NAME_WE)
add_dependencies(ros_essentials_cpp_user_generate_messages_lisp _ros_essentials_cpp_user_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_essentials_cpp_user_genlisp)
add_dependencies(ros_essentials_cpp_user_genlisp ros_essentials_cpp_user_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_essentials_cpp_user_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ros_essentials_cpp_user
  "/home/jose/catkin_ws/src/ros_essentials_cpp_user/msg/IoTSensor1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_essentials_cpp_user
)

### Generating Services
_generate_srv_nodejs(ros_essentials_cpp_user
  "/home/jose/catkin_ws/src/ros_essentials_cpp_user/srv/AddTwoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_essentials_cpp_user
)

### Generating Module File
_generate_module_nodejs(ros_essentials_cpp_user
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_essentials_cpp_user
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ros_essentials_cpp_user_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ros_essentials_cpp_user_generate_messages ros_essentials_cpp_user_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jose/catkin_ws/src/ros_essentials_cpp_user/msg/IoTSensor1.msg" NAME_WE)
add_dependencies(ros_essentials_cpp_user_generate_messages_nodejs _ros_essentials_cpp_user_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jose/catkin_ws/src/ros_essentials_cpp_user/srv/AddTwoints.srv" NAME_WE)
add_dependencies(ros_essentials_cpp_user_generate_messages_nodejs _ros_essentials_cpp_user_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_essentials_cpp_user_gennodejs)
add_dependencies(ros_essentials_cpp_user_gennodejs ros_essentials_cpp_user_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_essentials_cpp_user_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ros_essentials_cpp_user
  "/home/jose/catkin_ws/src/ros_essentials_cpp_user/msg/IoTSensor1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_essentials_cpp_user
)

### Generating Services
_generate_srv_py(ros_essentials_cpp_user
  "/home/jose/catkin_ws/src/ros_essentials_cpp_user/srv/AddTwoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_essentials_cpp_user
)

### Generating Module File
_generate_module_py(ros_essentials_cpp_user
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_essentials_cpp_user
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_essentials_cpp_user_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_essentials_cpp_user_generate_messages ros_essentials_cpp_user_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jose/catkin_ws/src/ros_essentials_cpp_user/msg/IoTSensor1.msg" NAME_WE)
add_dependencies(ros_essentials_cpp_user_generate_messages_py _ros_essentials_cpp_user_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jose/catkin_ws/src/ros_essentials_cpp_user/srv/AddTwoints.srv" NAME_WE)
add_dependencies(ros_essentials_cpp_user_generate_messages_py _ros_essentials_cpp_user_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_essentials_cpp_user_genpy)
add_dependencies(ros_essentials_cpp_user_genpy ros_essentials_cpp_user_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_essentials_cpp_user_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_essentials_cpp_user)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_essentials_cpp_user
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ros_essentials_cpp_user_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(ros_essentials_cpp_user_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_essentials_cpp_user)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_essentials_cpp_user
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ros_essentials_cpp_user_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(ros_essentials_cpp_user_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_essentials_cpp_user)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_essentials_cpp_user
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ros_essentials_cpp_user_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(ros_essentials_cpp_user_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_essentials_cpp_user)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_essentials_cpp_user
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ros_essentials_cpp_user_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(ros_essentials_cpp_user_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_essentials_cpp_user)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_essentials_cpp_user\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_essentials_cpp_user
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ros_essentials_cpp_user_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(ros_essentials_cpp_user_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
