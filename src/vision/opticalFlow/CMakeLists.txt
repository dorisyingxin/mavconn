##======================================================================
# 
# This file is used to get the contour tracking for Joe project
# 
#     And also need to communicate to pixhawk through mavlink
# 
##========================================================================

cmake_minimum_required(VERSION 2.8)
project( colorDetect )
find_package( OpenCV REQUIRED )
include_directories( ${OpenCV_INCLUDE_DIRS} )
add_executable( opticalFlow opticalFlow.cpp )
target_link_libraries( opticalFlow ${OpenCV_LIBS} )
