cmake_minimum_required(VERSION 2.8.3)
project(ignition_vs_gazebo)

find_package(catkin REQUIRED)

catkin_package(
)

install(DIRECTORY tests
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
