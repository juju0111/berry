################################################################################
# Set minimum required version of cmake, project name and compile options
################################################################################
cmake_minimum_required(VERSION 2.8.3)
project(berry_pkg)

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++11)

################################################################################
# Find catkin packages and libraries for catkin and system dependencies
################################################################################
find_package(catkin REQUIRED
  COMPONENTS
    roscpp
    rospy
    std_msgs
    message_generation
    dynamixel_sdk
)

################################################################################
# Declare ROS messages, services and actions
################################################################################
## Generate messages in the 'msg' folder
add_message_files(
  FILES
    BerryPos.msg
    SetPosition.msg
    SyncSetPosition.msg	
    BerrySetPosition.msg
    BerrySetAngle.msg
    BulkSetItem.msg
)

## Generate services in the 'srv' folder
add_service_files(
  FILES
    BerryKine.srv
    GetPosition.srv
    SyncGetPosition.srv
    BulkGetItem.srv
    BerryGetPosition.srv
)

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
    std_msgs
)

################################################################################
# Declare catkin specific configuration to be passed to dependent projects
################################################################################
catkin_package(
  CATKIN_DEPENDS
    roscpp
    rospy
    std_msgs
    dynamixel_sdk
#  DEPENDS system_lib
)

################################################################################
# Build
################################################################################
## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
  ${catkin_INCLUDE_DIRS}
)


add_executable(IK src/IK.cpp)
add_dependencies(IK ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(IK ${catkin_LIBRARIES})

add_executable(get_enc src/get_enc.cpp)
add_dependencies(get_enc ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(get_enc ${catkin_LIBRARIES})


add_executable(Berry_read_write_node src/Berry_read_write_node.cpp)
add_dependencies(Berry_read_write_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(Berry_read_write_node ${catkin_LIBRARIES})

add_executable(read_write_node src/read_write_node.cpp)
add_dependencies(read_write_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(read_write_node ${catkin_LIBRARIES})

add_executable(sync_read_write_node src/sync_read_write_node.cpp)
add_dependencies(sync_read_write_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(sync_read_write_node ${catkin_LIBRARIES})

add_executable(bulk_read_write_node src/bulk_read_write_node.cpp)
add_dependencies(bulk_read_write_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(bulk_read_write_node ${catkin_LIBRARIES})

add_executable(indirect_address_node src/indirect_address_node.cpp)
add_dependencies(indirect_address_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(indirect_address_node ${catkin_LIBRARIES})

################################################################################
# Install
################################################################################
## Mark executables for installation
## See http://docs.ros.org/melodic/api/catkin/html/howto/format1/building_executables.html
install(TARGETS read_write_node sync_read_write_node bulk_read_write_node indirect_address_node
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
