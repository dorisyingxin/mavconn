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
#include_directories( ${OpenCV_INCLUDE_DIRS} )
include_directories(/usr/local/include)
add_executable( colorDetect colorDetect.cpp )
#target_link_libraries( colorDetect ${OpenCV_LIBS} )
target_link_libraries( colorDetect /usr/local/lib/libopencv_core.so.2.4.9 )
target_link_libraries( colorDetect /usr/local/lib/libopencv_imgproc.so.2.4.9 )
target_link_libraries( colorDetect /usr/local/lib/libopencv_video.so.2.4.9 )
target_link_libraries( colorDetect /usr/local/lib/libopencv_calib3d.so.2.4.9 )
target_link_libraries( colorDetect /usr/local/lib/libopencv_contrib.so.2.4.9 )
target_link_libraries( colorDetect /usr/local/lib/libopencv_features2d.so.2.4.9 )
target_link_libraries( colorDetect /usr/local/lib/libopencv_flann.so.2.4.9 )
target_link_libraries( colorDetect /usr/local/lib/libopencv_legacy.so.2.4.9 )
target_link_libraries( colorDetect /usr/local/lib/libopencv_ml.so.2.4.9 )
target_link_libraries( colorDetect /usr/local/lib/libopencv_objdetect.so.2.4.9 )
target_link_libraries( colorDetect /usr/local/lib/libopencv_gpu.so.2.4.9 )
target_link_libraries( colorDetect /usr/local/lib/libopencv_highgui.so.2.4.9 )
target_link_libraries( colorDetect /usr/local/lib/libopencv_ml.so.2.4.9 )
target_link_libraries( colorDetect /usr/local/lib/libopencv_nonfree.so.2.4.9 )
target_link_libraries( colorDetect /usr/local/lib/libopencv_photo.so.2.4.9 )
target_link_libraries( colorDetect /usr/local/lib/libopencv_stitching.so.2.4.9 )
target_link_libraries( colorDetect /usr/local/lib/libopencv_superres.so.2.4.9)
target_link_libraries( colorDetect /usr/local/lib/libopencv_videostab.so.2.4.9 )


